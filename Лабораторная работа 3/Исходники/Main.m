clear; clc;
syms x;
X=[-1 0 1 2]; Y=[6 -1 -2 5];
P=LagPoly(X,Y)
P(x)