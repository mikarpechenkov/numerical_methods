clear; clc;
format long; syms x;
f=matlabFunction(1/(1+x^2));
h=10^-1; counter=1/h+1; b=1; a=0; eps = 10^-9;
X=a:h:b;
F=f(X);
int=4*byMethodRunge(a,b,counter,f,eps)
pi-int