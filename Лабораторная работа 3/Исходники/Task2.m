clear; clc;
syms x;

y=@(x)1./(1+25*x.^2);
hold on; grid on; xlabel('x'); ylabel('y');
fplot(y,[-5 5]); count=20
a=-5; b=5; c=b-a;
mas_i=repmat(0:1:count,count+1,1)
x_k=(a+b)/2+c/2.*cos((2.*mas_i(1,:)+1))
% T_n=@(x)cos(count*acos(x));
% *pi/2/(count+1));
y_k=y(x_k)
% m=y_k.*cos((2.*mas_i+1).*((mas_i)')*pi/(2*(count+1)))
% C_k=2/(count+1).*(sum(m'))
% T=x.*ones(1,count+1);
% T(1)=1; T(2)=(2*x-a-b)/(b-a);
% for i=3:1:count
%     T(i)=2*(2*x-a-b)/(b-a)*T(i-1)-T(i-2)
% end
% T_res=C_k(1)/2+sum(C_k(:,2).*T(:,2))
P=LagPoly(x_k,y);
% P(x)
% P(4)-y(4)
% P(5)-y(5)
fplot(P(x),[-5 5])
plot(x_k,y_k,'og')
P=LagPoly(x_k,y);
% P(x)
% T_n(x_k(1))-y(x_k(1))
%fplot(T_res,[a b])