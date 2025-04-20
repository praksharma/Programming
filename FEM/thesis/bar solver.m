function AxialBarFEM
      
      A = 1.0; %area of cross section
      L = 1.0; %length of bar
      E = 1.0; %modulus of elasticity of bar
      a = 1.0;
      R = 1.0;
%% discretization    
      e = 3; %number of elements
      h = L/e; % length of each element
      n = e+1; % number of nodes
      for i=1:n %scan each node
        node(i) = (i-1)*h; % x coordinate of each equally spaced node
      end
      for i=1:e % scan each element
        elem(i,:) = [i i+1]; % nodal connectivity matrix
      end
 %% element equations assembly    
      K = zeros(n); % initialize empty stiffness matrix
      f = zeros(n,1); % initialize empty load matrix
      for i=1:e
        node1 = elem(i,1); %initialize node 1 for element i
        node2 = elem(i,2); %initialize node 1 for element i
        Ke = elementStiffness(A, E, h); %calculation of element stiffness matrix for element i
        fe = elementLoad(node(node1),node(node2), a, h); %calculation of element load matrix for element i
        K(node1:node2,node1:node2) = K(node1:node2,node1:node2) + Ke; %assembly of stiffness matrix
        f(node1:node2) = f(node1:node2) + fe; %Assembly of load vector
      end
    
      f(n) = f(n) + 1.0;
   
      Kred = K(2:n,2:n); %reduced stiffness matrix along free DOFs
      fred = f(2:n);     %reduced load matrix along free DOFs
   
      d = inv(Kred)*fred;% calculation of displacement along free DOFs
   
      dsol = [0 d'];
   
      fsol = K*dsol'; % calculation of forces along restrained DOFs
      sum(fsol)
    
      figure;
      p0 = plotDisp(E, A, L, R, a);
      p1 = plot(node, dsol, 'ro--', 'LineWidth', 3); hold on;
      legend([p0 p1],'Exact','FEM');
   
      for i=1:e
        node1 = elem(i,1);
        node2 = elem(i,2);
        u1 = dsol(node1);
        u2 = dsol(node2);
        [eps(i), sig(i)] = elementStrainStress(u1, u2, E, h);
      end
 
      figure;
      p0 = plotStress(E, A, L, R, a);
      for i=1:e
        node1 = node(elem(i,1));
        node2 = node(elem(i,2));
        p1 = plot([node1 node2], [sig(i) sig(i)], 'r-','LineWidth',3); hold on;
      end
      legend([p0 p1],'Exact','FEM');

    function [p] = plotDisp(E, A, L, R, a)

      dx = 0.01;
      nseg = L/dx;
      for i=1:nseg+1
        x(i) = (i-1)*dx;
        u(i) = (1/(6*A*E))*(-a*x(i)^3 + (6*R + 3*a*L^2)*x(i));
      end
      p = plot(x, u, 'LineWidth', 3); hold on;
      xlabel('x', 'FontName', 'palatino', 'FontSize', 18);
      ylabel('u(x)', 'FontName', 'palatino', 'FontSize', 18);
      set(gca, 'LineWidth', 3, 'FontName', 'palatino', 'FontSize', 18);

    function [p] = plotStress(E, A, L, R, a)

      dx = 0.01;
      nseg = L/dx;
      for i=1:nseg+1
        x(i) = (i-1)*dx;
        sig(i) = (1/2*A)*(-a*x(i)^2 + (2*R + a*L^2));
      end
      p = plot(x, sig, 'LineWidth', 3); hold on;
      xlabel('x', 'FontName', 'palatino', 'FontSize', 18);
      ylabel('\sigma(x)', 'FontName', 'palatino', 'FontSize', 18);
      set(gca, 'LineWidth', 3, 'FontName', 'palatino', 'FontSize', 18);

    function [Ke] = elementStiffness(A, E, h)

      Ke = (A*E/h)*[[1 -1];[-1 1]];
 
    function [fe] = elementLoad(node1, node2, a, h)

      x1 = node1;
      x2 = node2;

      fe1 = a*x2/(2*h)*(x2^2-x1^2) - a/(3*h)*(x2^3-x1^3);
      fe2 = -a*x1/(2*h)*(x2^2-x1^2) + a/(3*h)*(x2^3-x1^3);
      fe = [fe1;fe2];

    function [eps, sig] = elementStrainStress(u1, u2, E, h)

      B = [-1/h 1/h];
      u = [u1; u2];
      eps = B*u
      sig = E*eps;
