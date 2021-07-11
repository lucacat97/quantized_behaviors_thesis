% Plot 3D Vector field
clear all
close all
clc
spacing = 0.05;
[X,Y,Z] = meshgrid(-1:spacing:1);
DX= floor(Y+0.5)-X;
DY =floor(Z+0.5)+floor(X+0.5)-2*Y;
DZ =floor(Y+0.5)-Z;
quiver3(X,Y,Z,DX,DY,DZ,'LineWidth',1.2,'AutoScaleFactor',1.5)
axis equal
title('Vector Field for triple Interaction'); 
xlim([-1 1])
ylim([-1 1])
zlim([-1 1])
hold on

[x y] = meshgrid(-1:0.1:1); % Generate x and y data
z1 = 0.5*ones(size(x, 1)); % Generate z data
z2 = -0.5*ones(size(x, 1)); % Generate z data
surf(x, y, z1,'FaceAlpha',0.5,'EdgeColor','none') % Plot the surface
surf(x, y, z2,'FaceAlpha',0.5,'EdgeColor','none') % Plot the surface
[x z] = meshgrid(-1:0.1:1);
y1 = 0.5*ones(size(x, 1)); % Generate z data
y2 = -0.5*ones(size(x, 1));
surf(x, y1, z,'FaceAlpha',0.5,'EdgeColor','none') % Plot the surface
surf(x, y2, z,'FaceAlpha',0.5,'EdgeColor','none')



