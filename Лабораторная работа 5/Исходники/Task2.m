clear; clc;
format long; syms x;
f=matlabFunction(1/(1+x^2));
step=10^-3; b=1; a=0;
X=a:step:b;
F=f(X);
int1=4*integrateByTrapezoid(step,F)
X=a:step/2:b;
F=f(X);
int2=4*integrateBySimpson(step,F)
pi-int1
pi-int2