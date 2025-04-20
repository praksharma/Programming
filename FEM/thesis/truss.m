%%
% Downloaded from CivilEngineeringBible.com
% Finite element MATLAB program for plane truss analysis
%%
clear all;clc;close all;
Nodes = load('nodes.txt'); %x, y coordinates
Elements = load('elements.txt');    % first node, second node, E, A
numnode = length(Nodes); %Holds number of nodes
numelem = size(Elements,1); %Holds number of elements

K = zeros(2*numnode,2*numnode);
U = zeros(2*numnode, 1);
F = zeros(2*numnode, 1);
strain = zeros(numelem,1);
stress= zeros(numelem,1);
axialforce =zeros(numelem,1);
act = 1:2*numnode; %Holds active DOFs
act([1 2 5 6 7 8]) = [];
for ie = 1:numelem
    DOFs = [2*Elements(ie, 1)-1, 2*Elements(ie, 1), 2*Elements(ie, 2)-1, 2*Elements(ie, 2)]; %Holds element's DOFs
    X1 = Nodes(Elements(ie,1), 1);
    Y1 = Nodes(Elements(ie,1), 2);
    X2 = Nodes(Elements(ie,2), 1);
    Y2 = Nodes(Elements(ie,2), 2);
    
    L = sqrt((X2-X1)^2+(Y2-Y1)^2); %Holds length of element
    ms = (Y2-Y1)/L;ls=(X2-X1)/L;
    E = Elements(ie,3); %Holds modolus of elasticiy of element
    A = Elements(ie,4); %Holds cross sectional area of element
    K(DOFs,DOFs) = K(DOFs,DOFs) + (E*A/L)*[ls^2 ls*ms -ls^2 -ls*ms; ls*ms ms^2 -ls*ms -ms^2; -ls^2 -ls*ms ls^2 ls*ms; -ls*ms -ms^2 ls*ms ms^2]; % Calculates the element stiffness matrix and assembles it to the global stiffness matrix
end
F(3) = 10000; F(4) = 10000*sqrt(3);
U(act) = K(act,act)\F(act);

for ie = 1:numelem
    DOFs = [2*Elements(ie, 1)-1, 2*Elements(ie, 1), 2*Elements(ie, 2)-1, 2*Elements(ie, 2)]; %Holds element's DOFs
    X1 = Nodes(Elements(ie,1), 1);
    Y1 = Nodes(Elements(ie,1), 2);
    X2 = Nodes(Elements(ie,2), 1);
    Y2 = Nodes(Elements(ie,2), 2);
    L = sqrt((X2-X1)^2+(Y2-Y1)^2); %Holds length of element
    ms = (Y2-Y1)/L;ls=(X2-X1)/L;
    d = [ls ms 0 0; 0 0 ls ms]*U(DOFs);
    strain(ie) = (d(2) - d(1))/L;
    stress(ie)= Elements(ie, 3)*strain(ie);
    axialforce(ie) = stress(ie)*Elements(ie,4);
end
