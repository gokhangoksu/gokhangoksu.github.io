clc
clear all
close all

X1=-10:1:-5;
X2=-5:1:-3;
[x1,x2]=meshgrid(X1,X2);
F=3*x1.^2 - 4*x1.*x2 + 4*x2.^2 - 9*x1 - 2*x2 + 51/4;

% There are three ways to have a 3D plot in MATLAB:
% surf(x1,x2,F)
% surf(F)

% mesh(x1,x2,F)

% plot3(x1,x2,F)

contourf(x1,x2,F)
figure
contourf(F)