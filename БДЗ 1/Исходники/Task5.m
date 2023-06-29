clear; clc; clf;
syms x
X=[1, 3, 5]
y=matlabFunction(1+cos(sqrt(x)));
P=LagPoly(X,y(X));
P(x)
Error(X,y,P);
