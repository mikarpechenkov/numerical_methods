clear; clc;
syms x;
format long
f=matlabFunction(-x^3 - x^2 + 10*x - 1);
p=[-1,-1,10,-1];
Roots=sort(roots(p))
disp('Вычисленя при помощи метода Ньютона')
x0=0.1
NewtonsMethod(f,x0,1,10^-9)
x0=-3.8
NewtonsMethod(f,x0,1,10^-9)
x0=2.5
NewtonsMethod(f,2.5,1,10^-9)

