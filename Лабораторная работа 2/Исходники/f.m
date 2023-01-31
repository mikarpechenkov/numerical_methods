clear;
clc;
syms x A;

F=@(x)x^3-3*x^2-9*x-5;
% hold on; grid on; xlabel('x'); ylabel('y');
% fplot(F, [-10 10]);
% format long
% p=[1 -3 -9 -5];
% roots(p)

% x=dihotomiya(F,2.254789632457,6.000656584848,10^(-14))

% a1=3.5451515481644815554;
% b1=8.51154896511841565;
% x0=b1; mul=1; e=10^(-6);
% x=NewtonForTasks(F,x0,a1,b1,mul,e)
% 
% a1=-1.1823219223882;
% b1=-0.923280154896511841565;
% x0=a1; mul=1; e=10^(-6);
% x=NewtonForTasks(F,x0,a1,b1,mul,e)
% 
% a1=-1.1823219223882;
% b1=-0.923280154896511841565;
% x0=a1; mul=2; e=10^(-6);
% x=NewtonForTasks(F,x0,a1,b1,mul,e)

% a=3;
% fi=@(x)1/2*(a/x+x)
% x0=1;
% e=10^(-10);
% solution=SIM(fi,x0,e)

% fi=@(x)x^2+x-0.9999;
% x1=solve(diff(fi,x)==-1)
% x2=solve(diff(fi,x)==1)
% x0=-0.5;
% e=10^(-3);
% s=SIM(fi,x0,e)

% fi = @(x) sin(x) + 1;
% x0 = fzero(fi,[-pi pi])


% fi=@(x)sin(x)-x/2;
% hold on; grid on; xlabel('x'); ylabel('y');
% fplot(fi, [-3 3]);
% e=10^(-6);
% x=dihotomiya(fi,-3,-1,e)
% x=dihotomiya(fi,-1,1,e)
% x=dihotomiya(fi,1,3,e)
% fi=@(x)sin(x)-x/2;
% a1=-3;
% b1=-1;
% x0=-2; mul=1; e=10^(-6);
% x=NewtonForTasks(fi,x0,a1,b1,mul,e)
% 
% a1=-0.5451515481644815554;
% b1=0.51154896511841565;
% x0=-0.2; mul=1; e=10^(-6)
% x=NewtonForTasks(fi,x0,a1,b1,mul,e)
% 
% a1=1.5451515481644815554;
% b1=2.51154896511841565;
% x0=2; mul=1; e=10^(-6)
% x=NewtonForTasks(fi,x0,a1,b1,mul,e)


% fi=@(x)sin(x)+x/2;
% e=10^(-6);
% x0=cos(pi);
% s=SIM(fi,x0,e)
% x0=0.001;
% s=SIM(fi,x0,e)
% x0=cos(pi/3)
% s=SIM(fi,x0,e)