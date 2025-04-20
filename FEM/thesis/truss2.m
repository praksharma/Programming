%%
% Downloaded from CivilEngineeringBible.com
% Finite element MATLAB program for plane truss analysis
%%
clear all;clc;close all;
DispAmplificationFactor = 2;
Nodes = load('nodes.txt'); %x, y coordinates
Elements = load('elements.txt');    % first node, second node, E, A
numnode = length(Nodes); %Holds number of nodes
numelem = size(Elements,1); %Holds number of elements

K = zeros(2*numnode,2*numnode);
F = zeros(2*numnode, 1);
U = zeros(2*numnode, 1);
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








%Visualization
U = U*DispAmplificationFactor;
hold all
AllX = [Nodes(:,1); Nodes(:,1)+U(1:2:end)];
AllY = [Nodes(:,2); Nodes(:,2)+U(2:2:end)];
minX = min(AllX);
maxX = max(AllX);
minY = min(AllY);
maxY = max(AllY);
if minX == 0
    minX = -0.1*maxX;
end
if minY == 0
    minY = -0.1*maxY;
end
xlim([minX*0.9 maxX*1.1])
ylim([minY*0.9 maxY*1.1])
for ie=1:numelem
    DOFs = [2*Elements(ie, 1)-1, 2*Elements(ie, 1), 2*Elements(ie, 2)-1, 2*Elements(ie, 2)]; %Holds element's DOFs
    X0 = [Nodes(Elements(ie,1),1), Nodes(Elements(ie,2),1)];
    Y0 = [Nodes(Elements(ie,1),2), Nodes(Elements(ie,2),2)];
    XM = (X0(1) + X0(2))/2;
    YM = (Y0(1) + Y0(2))/2;
    XC = X0 + U([2*Elements(ie, 1)-1, 2*Elements(ie, 2)-1])';
    YC = Y0 + U([2*Elements(ie, 1), 2*Elements(ie, 2)])';
    plot([X0(1) XC(1)],[Y0(1), YC(1)], '--', 'Color', [.8 .54 .8], 'LineWidth', 2)
    plot(X0,Y0, 'Color', 'black', 'LineWidth', 2)
	plot(XC,YC, 'Color', 'blue', 'LineWidth', 2)

    if axialforce(ie) < 0 
        str = ['Force=', num2str(abs(axialforce(ie))), ' C'];
    else
        str = ['Force=', num2str(axialforce(ie)), ' T'];
    end
    text(XM,YM, str, 'HorizontalAlignment','center', 'BackgroundColor', [.95 .95 .95])
end

plot(Nodes(:,1)', Nodes(:,2)', 'o', 'color', 'black')
plot(Nodes(:,1)' + U(1:2:end)', Nodes(:,2)'+ U(2:2:end)', 'o', 'color', 'blue')
legend('Displacement', 'Initial Config.', 'Deformed Config.')
xlabel(['C: Compressive, T:Tensile;      Amplification Factor: ', num2str(DispAmplificationFactor)])
grid on