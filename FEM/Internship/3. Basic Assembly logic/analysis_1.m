 clc
clear all
disp('                              Beam Analysis by Prakhar Sharma');
disp(' Basic Units are kN, m and radians');
%% Data Input Section
E=2*10^8;  
dep=0.1;base=.05;
I=4*10^(-6);
node=[0;5;10];    %node coordinates matrix
conn=[1 2;2 3];         %element connection matrix
NN=size(node,1);        %number of nodes
NE=size(conn,1);        %number of elements
ndof=2*NN;              %total dof
fdof=[2 3 4 6];             %free dof
fprintf('\n E=%G kN/m^2\n I=%G m^4\n DOF=%d\n',E,I,ndof);
%% Formaion of Displacement Matrix
d=zeros(ndof,1);                                                            
%% Formation of Load Matrix
p=-1;
f=zeros(ndof,1);        %empty load vector
f(3)=p;

%% Formation of Stiffness Matrix
K=zeros(ndof);          %size of assembled stiffness matrix is ndof x ndof
for e=1:NE              %loop over all elements
    n1=conn(e,1);       %ID of first node of each element 
    n2=conn(e,2);       %ID of second node of each element
    x1=node(n1,1);      %x coordinate of node n1
    x2=node(n2,1);      %x coordinate of node n2
    %y1=node(n1,2);      %y coordinate of node n1
    %y2=node(n2,2);      %y coordinate of node n2
    %L=sqrt((x2-x1)^2+(y2-y1)^2);
    L=x2-x1;
    KE=      E*I/L^3*[12    6*L     -12    6*L;
                   6*L   4*L^2   -6*L   2*L^2; 
                  -12   -6*L      12   -6*L; 
                   6*L   2*L^2   -6*L   4*L^2];             
%% Assembly of Stiffness Matrix
sctr=[2*n1-1 2*n1 2*n2-1 2*n2];%DOFPN*node is the occupancy of that node
K(sctr,sctr)=K(sctr,sctr)+KE;  %position where each row and column must be scattered                                                                     
end                                                                                     
%% Nodal Displacements
d(fdof)=K(fdof,fdof)\f(fdof);
fprintf('---------------------------------------------------------\n Nodal Displacement\n---------------------------------------------------------');
fprintf('\n Node   Y-disp    Rotation\n');                                    
for i=1:NN
    fprintf(' %d     %f   %f\n',i,d(2*i-1),d(2*i));
end                  
%%  Calculating Reaction forces
f=K*d;      % equilibrium equation 
fprintf('---------------------------------------------------------\n Member End Action\n---------------------------------------------------------');

fprintf('\n Node   Force    Moment\n');
for i=1:NN
    fprintf(' %d     %f    %f\n',i,f(2*i-1),f(2*i));
end                                                                             
%% Maximum Stress and Strain
fprintf('---------------------------------------------------------\n Stress and Strain\n---------------------------------------------------------');
    combined_stress=zeros(NN,3);
    for i=1:NN
        combined_stress(i,1)=abs(f(2*i))*dep/I;  %bending stress
        combined_stress(i,2)=abs(f(2*i-1))/dep/base; %direct stress
        combined_stress(i,3)= combined_stress(i,1)+combined_stress(i,2);    %combined stress
    end 
     fprintf('\n Node    Direct Stress   Bending Stress  Combined Stress\n');
    for i=1:NN
   fprintf(' %d           %G           %G          %g \n',i,combined_stress(i,1),combined_stress(i,2),combined_stress(i,3));
    end
    fprintf('---------------------------------------------------------\n END\n---------------------------------------------------------\n');
  %% Shear Force Diagram
%   figure(1);
%   title('Shear Force Diagram (SFD)');
%   xlabel('Length (m)');
%   ylabel('Shear Force (kN)');
%   baseline=max(node)-min(node);
%   line([min(node),max(node)],[0 0]);
%   hold on
%   SF=zeros(NN,1);
%   sum=f(1:2:ndof);
%   SF=cumsum(sum);   %cumsum is cumulative sum
%   for e=1:NE        %SFD
%       y=SF(e);
%       n1=conn(e,1);
%       n2=conn(e,2);
%       x=node(n1):0.001*baseline:node(n2);
%       plot(x,y)
%       hold on
%   end
%   plot(0,max(SF)*1.2,0,-min(SF)*1.2);   %extend graph in y direction
%   hold on
%   for i=1:NN
%       plot(node(i),min(SF):0.01:max(SF));   %extend graph in x direction
%       hold on
%   end
%   plot(min(node)-1,0,max(node)+1,0);
  %% Bending Moment Diagram
  %figure(2)
  %title('Bending Moment Diagram (BMD)');
  %xlabel('Length (m)');
  %ylabel('Bending Moment (kNm)');
  %baseline=max(node)-min(node);
  %line([min(node),max(node)],[0 0]);
  %hold on
  %BM=zeros(NN,1);
  %sum=f(2:2:ndof);
  %BM=cumsum(sum);
  %for e=1:NE
  %   n1=conn(e,1);
  %  n2=conn(e,2);
  % x=[node(n1) node(n2)];
  %y=[BM(n1) BM(n2)];
  %    line(x,y);
  %    hold on
  %end