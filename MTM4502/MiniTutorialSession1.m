clc			% Clears all the text from the "Command Window", resulting in a clear screen
clear all	% Clears all variables from the current "Workspace"
close all	% Closes all currently open figures 

% Definitions: Vector, Matrix
a=[3,5,6];  % Row vector
a=[3;5;6];  % Column vector
a=[3 5 6]'; % Row vector transpose=Column vector
r=rand(1,7);	% Returns 1x7 matrix (i.e. row vector) whose elements are from uniform distribution in [0,1]
r=randn(1,7);	% Returns 1x7 matrix (i.e. row vector) whose elements are from standard normal distribution
r=randi(5,1,7);	% Returns 1x7 matrix whose elements are integers drawn from the discrete uniform distribution on [1,5]

B=zeros(3);		% All zeros 3x3 matrix
C=ones(3);		% All ones 3x3 matrix
C(3,3)=0.5;		% Updates 3x3 element by 0.5
eigs(C)			% Returns the eigenvalues! An easy check for the definiteness!!!

I=eye(3);		% 3x3 identity matrix
I=eye(3,4);		% Not an identity matrix anymore!!!

A=round(randn(3,5),0)		% 3x5 matrix
% 3 types of rounding
% round: rounding to the nearest integer
% ceil: rounding to the next integer
% floor: rounding to the previous integer
size(A) % m n
size(A,1) % m
size(A,2) % n

A=round(randn(3,3),0)		% 3x3 matrix
det(A)		% Determinant of the matrix A
B=inv(A)	% Matrix inverse
A*B			% Matrix product
trace(A*B)	% Trace of the product: expected to be 3!
A'			% Transpose of A

x=round(10*randn(5,1));		% Any random 5x1 vector whose elements are from uniform distribution in [0,10] (That's how we can make the scaling!)
y=round(10*randn(5,1));		% Any random 5x1 vector whose elements are from uniform distribution in [0,10] (That's how we can make the scaling!)
x'*y	% Inner product <x,y>
norm2x=norm(x)      	% By default: 2-norm
norm2x=sqrt(x'*x)		% Check!

norm1x=norm(x,1)		% 1-norm
norm1x=sum(abs(x))		% Check!

normInfx=norm(x,Inf)	% Inf-norm
normInfx=max(abs(x))	% Check!

charpoly(A)				% Returns the coefficients of the characteristic polynomial of A
[P,D]=eig(A) 			% or eigs(A): Returns diagonal matrix D containing the eigenvalues on the main diagonal and matrix P whose columns are the corresponding eigenvectors
A=P*D*inv(P)			% That's how we reconstruct the matrix from its diagonalization!
P(:,1) 					% The eigenvector corresponding to the first eigenvalue

% Random hyperplane plot in R^2
x1=-10:0.01:10;
x2=-10:0.01:10;
[X1,X2]=meshgrid(x1,x2);
u=ones(2,1)+randi(5,2,1);
v=randi(5,1,1);
z=u(1,1)*X1+u(2,1)*X2-v;
mesh(X1,X2,z)