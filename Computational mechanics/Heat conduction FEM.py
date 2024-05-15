import numpy as np
from scipy.spatial import Delaunay
from scipy.stats import qmc
import matplotlib.pyplot as plt
from scipy.sparse import csr_matrix
from scipy.sparse.linalg import spsolve
from delaunay_triangulation import delaunay_triangulation

# Domain and meshing stuff
domain = (0, 0, 10, 10)
num_points = 1055

# Generate pseudo-random points using Halton sequence
sampler = qmc.Halton(2)
points = sampler.random(num_points) * np.array([domain[2]-domain[0], domain[3]-domain[1]]) + np.array([domain[0], domain[1]])

# Add corner points
corner_points = np.array([
    [domain[0], domain[1]],  # Bottom-left
    [domain[2], domain[1]],  # Bottom-right
    [domain[2], domain[3]],  # Top-right
    [domain[0], domain[3]]   # Top-left
])
points = np.concatenate((points, corner_points))

tri = delaunay_triangulation(points, domain)

# Finite element solution
def solve_heat_conduction(tri, points, domain):
  """
  Solves the 2D Laplace equation using finite elements with Dirichlet boundary conditions.

  Args:
    tri: Delaunay object representing the triangulation.
    points: Numpy array of points.
    domain: Tuple (xmin, ymin, xmax, ymax) defining the domain.

  Returns:
    Numpy array of temperature values at each node.
  """
  
  # 1. Assemble stiffness matrix and load vector
  n_nodes = len(points)
  K = np.zeros((n_nodes, n_nodes))
  F = np.zeros(n_nodes)

  for i, triangle in enumerate(tri.simplices):
    # Get coordinates of triangle vertices
    x1, y1 = points[triangle[0]]
    x2, y2 = points[triangle[1]]
    x3, y3 = points[triangle[2]]

    # Calculate area of triangle
    area = 0.5 * abs((x2*y3 - x3*y2) - (x1*y3 - x3*y1) + (x1*y2 - x2*y1))

    # Calculate element stiffness matrix
    Ke = np.array([
      [y2**2 + y3**2, -y2*y3, -y2*y3],
      [-y2*y3, y1**2 + y3**2, -y1*y3],
      [-y2*y3, -y1*y3, y1**2 + y2**2]
    ]) * (1 / (4 * area))

    # Correctly add element stiffness matrix to global stiffness matrix
    K[triangle[:, None], triangle] += Ke  # Use broadcasting

    # Calculate element load vector (not needed for Laplace equation)
    # Fe = np.array([1, 1, 1]) * (area / 3)
    # F[triangle] += Fe

  # 2. Apply boundary conditions
  left_boundary_nodes = np.where(points[:, 0] == domain[0])[0]
  right_boundary_nodes = np.where(points[:, 0] == domain[2])[0]

  # Set temperature values for Dirichlet boundary conditions
  K[left_boundary_nodes, :] = 0
  K[left_boundary_nodes, left_boundary_nodes] = 1
  F[left_boundary_nodes] = 0
  
  K[right_boundary_nodes, :] = 0
  K[right_boundary_nodes, right_boundary_nodes] = 1
  F[right_boundary_nodes] = 1

  # 3. Solve the system of equations
  # Convert to sparse matrix for efficiency
  K_sparse = csr_matrix(K)
  T = spsolve(K_sparse, F)

  return T

T = solve_heat_conduction(tri, points, domain)


# Plot the triangulation
fig1 = plt.figure(1)
plt.triplot(points[:,0], points[:,1], tri.simplices)
plt.plot(points[:,0], points[:,1], 'o')
plt.title('Delaunay triangulated mesh')
plt.show()

# Plot the temperature field
fig2 = plt.figure(2)
plt.tricontourf(points[:,0], points[:,1], tri.simplices, T)
plt.colorbar()
plt.title('Temperature field')
plt.show()
