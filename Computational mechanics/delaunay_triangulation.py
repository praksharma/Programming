import numpy as np
from scipy.spatial import Delaunay
import matplotlib.pyplot as plt
from scipy.stats import qmc
def halton_sequence(base, num_points):
  """
  Generates a Halton sequence in 2 dimensions.

  Args:
    base: The base of the Halton sequence (2 for the example).
    num_points: The number of points to generate.

  Returns:
    A numpy array of shape (num_points, 2) containing the Halton sequence points.
  """
  points = np.zeros((num_points, 2))
  for i in range(num_points):
    for j in range(2):
      points[i, j] = halton(i + 1, base**(j + 1))
  return points

def halton(n, base):
  """
  Calculates the n-th term of the Halton sequence for the given base.

  Args:
    n: The index of the term (starts from 1).
    base: The base of the Halton sequence.

  Returns:
    The n-th term of the Halton sequence.
  """
  result = 0
  i = 1
  f = 1.0 / base
  while n > 0:
    result += (n % base) * f
    n //= base
    i += 1
    f /= base
  return result
def delaunay_triangulation(points, domain):
  """
  Calculates the Delaunay triangulation for a set of points within a rectangular domain.

  Args:
    points: A numpy array of shape (n, 2) representing the points.
    domain: A tuple (xmin, ymin, xmax, ymax) defining the rectangular domain.

  Returns:
    A Delaunay object representing the triangulation.
  """

  # Add super triangle vertices to ensure all points are inside the triangulation
  super_triangle_vertices = [
    [domain[0] - 1, domain[1] - 1],
    [domain[2] + 1, domain[1] - 1],
    [domain[0] - 1, domain[3] + 1]
  ]
  
  # Combine points and super triangle vertices
  all_points = np.concatenate((points, np.array(super_triangle_vertices)))

  # Calculate Delaunay triangulation
  tri = Delaunay(all_points)

  # Remove triangles containing super triangle vertices
  triangles_to_remove = np.where(
    np.any(tri.simplices >= len(points), axis=1)
  )[0]
  tri.simplices = np.delete(tri.simplices, triangles_to_remove, axis=0)

  return tri
if __name__=="__main__":
	# Example usage
  domain = (0, 0, 10, 10)

  # Generate pseudo-random points using a low-discrepancy sequence (Halton sequence)
  num_points = 50
  #points = halton_sequence(2, num_points) * np.array([domain[2]-domain[0], domain[3]-domain[1]]) + np.array([domain[0], domain[1]])
  # Generate pseudo-random points using Halton sequence
  sampler = qmc.Halton(2)  # Create Halton sampler for 2 dimensions
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

  # Plot the triangulation
  plt.triplot(points[:,0], points[:,1], tri.simplices)
  plt.plot(points[:,0], points[:,1], 'o')
  plt.show()

