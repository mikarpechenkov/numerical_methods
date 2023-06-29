clc,clear,clf,close all
syms x
f = cosh(x)
d1 = diff(f,x)
d2 = diff(d1,x)
d3 = diff(d2,x)
d4 = diff(d3,x)
temp = abs([subs(d4,-1),subs(d4,3)])
M4 = max(temp)
Hopt = (48*10^(-6)/cosh(3))^(1/4)

