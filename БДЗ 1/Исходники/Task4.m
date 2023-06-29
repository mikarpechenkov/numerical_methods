clear; clc;
syms x;
f=matlabFunction(acos(x) + x - 3/2)
hold on; grid on;
fplot(f,[0.5 0.8], 'Color','r')
fplot(diff(f,x,1),[0.5 0.8],'Color','g')
fplot(diff(f,x,2),[0.5 0.8],'Color','m')
x0=0.8;
NewtonsMethod(f,x0,1,10^-9)
