clc
clear all
disp('                              Structural Analysis by Prakhar Sharma');
disp(' Basic Units are kN, m and radians');
%% Data Input Section
E_M=[2*10^8;2*10^8;2*10^8;2*10^8;2*10^8];                             % modulus of Elasticity matrix 
dep=0.1;base=.05;
I_M=[1*10^(-5);1*10^(-5);1*10^(-5);1*10^(-5);1*10^(-5)];    %moment of inertia matrix
A_M=[0.01;0.01;0.01;0.01;0.01];    %cross-section area matrix
node=[0 0;0 3;3 3;3 0]; % nodal coordinates
conn=[1 2;2 3;3 4];         %element connection matrix       
NN=size(node,1);        %number of nodes
NE=size(conn,1);        %number of elements
ndof=3*NN;              %total dof
fdof=[4 5 6 7 8 9 12];          %free dof
%% Formation of Displacement Matrix
d=zeros(ndof,1);                                                            
f=zeros(ndof,1);       
f(4)=10;
%f(5)=-10;f(11)=-10;%empty load vector
%f(2)=-4;f(3)=-2.66666666666667;f(5)=-4-2-10;f(6)=+2.66666666666667-0.666666666666667;f(8)=-2;f(9)=0.666666666666667;
%% Formation of Stiffness Matrix
K=zeros(ndof);          %size of assembled stiffness matrix is ndof x ndof
for e=1:NE              %loop over all elements
    n1=conn(e,1);       %ID of first node of each element 
    n2=conn(e,2);       %ID of second node of each element
    x1=node(n1,1);      %x coordinate of node n1
    x2=node(n2,1);      %x coordinate of node n2
    y1=node(n1,2);      %y coordinate of node n1
    y2=node(n2,2);      %y coordinate of node n2
    L=sqrt((x2-x1)^2+(y2-y1)^2);
    theta=atand((y2-y1)/(x2-x1));
    c=cosd(theta);
    s=sind(theta);
    E=E_M(e,1);
    I=I_M(e,1);
    A=A_M(e,1);
    K_W_R=  E*[ A/L     0           0       -A/L      0           0;
                0       12*I/L^3    6*I/L^2  0       -12*I/L^3    6*I/L^2;
                0       6*I/L^2     4*I/L    0       -6*I/L^2     2*I/L; 
              -A/L      0           0        A/L      0           0;
                0       -12*I/L^3 -6*I/L^2   0        12*I/L^3   -6*I/L^2; 
                0       6*I/L^2     2*I/L    0       -6*I/L^2     4*I/L];  
    if (y2-y1)==0
        KE=K_W_R;
    else 
        R=[c s 0 0 0 0;
          -s c 0 0 0 0;
           0 0 1 0 0 0;
           0 0 0 c s 0;
           0 0 0 -s c 0;
           0 0 0 0 0 1];
   KE=(R.')*(K_W_R)*R;  
    end
      
%% Assembly of Stiffness Matrix
sctr=[3*n1-2 3*n1-1 3*n1 3*n2-2 3*n2-1 3*n2];
K(sctr,sctr)=K(sctr,sctr)+KE;  %position where each row and column must be scattered                                                                     
end                                                                                     
%% Nodal Displacements
d(fdof)=K(fdof,fdof)\f(fdof);
for e=1:NE  % Use of shape function
    n1=conn(e,1);       
    n2=conn(e,2);       
    x1=node(n1,1);      
    x2=node(n2,1);     
    y1=node(n1,2);      
    y2=node(n2,2);
    theta=atand((y2-y1)/(x2-x1));
    L=sqrt((x2-x1)^2+(y2-y1)^2);
    N_Trans_d=zeros(1,1*11); % s varies 0:0.1:1 that is 11 points
    B_Trans_d=zeros(1,1*11);
    Bx_Trans_d=zeros(1,1*11);
    for S=0:0.1:1   % s varies from 0 to 1 in derivation
    sctr=int16(1+S*10); % int16 has been used to convert the float number resulting from 1+S*10 into interger, so as to use it as a matrix index
    N_Trans_d(1,sctr)=[1-3*S^2+2*S^3 L*(S-2*S^2+S^3) 3*S^2-2*S^3 L*(-S^2+S^3)]*[d(3*n1-1);d(3*n1);d(3*n2-1);d(3*n2)]; % N transpose*d
    B_Trans_d(1,sctr)=E_M(e,1)*I_M(e,1)/L^2*[-6+12*S L*(-4+6*S) 6-12*S L*(-2+6*S)]*[d(3*n1-1);d(3*n1);d(3*n2-1);d(3*n2)]; % B transpose*d 
    Bx_Trans_d(1,sctr)= E_M(e,1)*I_M(e,1)/L^3*[12 6*L -12 6*L]*[d(3*n1-1);d(3*n1);d(3*n2-1);d(3*n2)]; % shear force
    % 3*n1-2 can't be used here, as it is an axial property and involves in the shape function of truss
    end
    if e==1
    N=horzcat([],N_Trans_d);
    M=horzcat([],B_Trans_d);
    V=horzcat([],Bx_Trans_d);
    theta=horzcat([],temp);
    else % starts from 2 so that shape does not coincide at nodes
    theta=horzcat(theta,temp(1,2:size(theta_ele,2)));
    N=horzcat(N,N_Trans_d(1,2:size(N_Trans_d,2)));
    M=horzcat(M,B_Trans_d(1,2:size(B_Trans_d,2)));
    V=horzcat(V,Bx_Trans_d(1,2:size(Bx_Trans_d,2)));
    end
end
fprintf('---------------------------------------------------------\n Nodal Displacement\n---------------------------------------------------------');
fprintf('\n Node   X-Disp   Y-disp    Rotation\n');                                    
for i=1:NN
    fprintf(' %d    %f     %f   %f\n',i,d(3*i-2),d(3*i-1),d(3*i));
end                  
%%  Calculating Reaction forces
f=-f+K*d;      % equilibrium equation 
fprintf('---------------------------------------------------------\n Member End Action\n---------------------------------------------------------');

fprintf('\n Node   X-Force  Y-Force    Z-Moment\n');
for i=1:NN
    fprintf(' %d    %f    %f    %f\n',i,f(3*i-2),f(3*i-1),f(3*i));
end                                                                             
%% Maximum Stress and Strain
fprintf('---------------------------------------------------------\n Stress and Strain\n---------------------------------------------------------');
    combined_stress=zeros(NN,3);
    for i=1:NN
        combined_stress(i,1)=abs(f(3*i-1))*dep/I(1,1);  %bending stress
        combined_stress(i,2)=abs(f(3*i-1))/dep/base; %direct stress
        combined_stress(i,3)= combined_stress(i,1)+combined_stress(i,2);    %combined stress
    end 
     fprintf('\n Node    Direct Stress   Bending Stress  Combined Stress\n');
    for i=1:NN
   fprintf(' %d           %G           %G          %g \n',i,combined_stress(i,1),combined_stress(i,2),combined_stress(i,3));
    end
    fprintf('---------------------------------------------------------\n END\n---------------------------------------------------------\n');
% pause();
% z=0:node((e+1),1)/(size(N,2)-1):node((e+1),1);
% plot(z,N);
% hold on
% plot(z,0,'--');
% title('Distorted geometry of 2 Node beam Element') 
% xlabel('Length (m)');
% ylabel('length (m)');
% hold off
% pause();
% z=0:node((e+1),1)/(size(N,2)-1):node((e+1),1);
% plot(z,M);
% hold on
% plot(z,0);
% title('BMD for 2 Node beam Element') 
% xlabel('Length (m)');
% ylabel('Moment (kN-m)');
% hold off
% pause();
% plot(z,V);
% hold on
% plot(z,0,1,max(V)+1,1,min(V)-1);
% title('SFD of 2 Node beam Element') 
% xlabel('Length (m)');
% ylabel('Shear force (kN)');
