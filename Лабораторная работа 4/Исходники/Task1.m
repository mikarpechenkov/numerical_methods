clear; clc;
syms x;
format long
y=@(x)exp(x);
x0=5;
eps=10^-3;
DerSquare(y,x0,eps)
x0=5;
eps=10^-6;
DerSquare(y,x0,eps)