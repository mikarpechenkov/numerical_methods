clear; clc; clf;
syms x;
format long
y=matlabFunction(exp(x));
y1=matlabFunction(diff(y(x),x,1));
y2=matlabFunction(diff(y(x),x,2));
x0=5;
i=1:1:40;
h=2.^-i
epsPractice=abs(y1(x0)-(y(x0+h)-y(x0))./h)
epsPractice(length(epsPractice))
hold on; grid on; xlabel('x'); ylabel('y');
%plot(h,epsPractice,'-g');
plot(log(h),log(epsPractice),'-g');
hOpt=0;
hOptLog=log(hOpt)
hOpt=2*sqrt(10^-16/y2(fminbnd(matlabFunction(-diff(y(x),x,2)),-abs(x0)-1, abs(x0)+1)))
fhOpt=2*sqrt(y2(fminbnd(matlabFunction(-diff(y(x),x,2)),-abs(x0)-1, abs(x0)+1))*10^-16)
plot(log(hOpt), log(fhOpt),'or')
hold off;
