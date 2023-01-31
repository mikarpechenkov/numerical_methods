clear; clc;
syms x;

y=@(x)sin(pi*x);
t=[0 1/6 1/3 1/2];
X=0:1/4:1
Y=y(X);
% Apoints=[];
% Bpoints=[];
% ta=1;
% for i=1:1:length(Y)-1
%    
%    while(t(i)>X(ta+1))
%        ta=ta+1;
%    end
%    Apoints=[Apoints (Y(ta+1)-Y(ta))/(X(ta+1)-X(ta))];
%    Bpoints=[Bpoints Y(ta)-X(ta)*Apoints(i)];
%    ta=1;
% end
% Apoints
% Bpoints
hold on; grid on; xlabel('x'); ylabel('y');
fplot(y,[0 1])
% for i=1:1:length(Y)-1
%     plot(t(i),t(i)*Apoints(i)+Bpoints(i),'og')
% end
% InterPointsY=[t.*Apoints+Bpoints]
% SinPointY=y(t)

%line(X,Y,'Color','red')
% 
P=LagPoly(X,y);
P(x);
ezplot(P(x),[0 1])
for i=1:1:length(t)
   P(t(i))
   plot(t(i),P(t(i)),'og')
end
% P(2)
w=@(x)prod(x-t)
maxw=w(fminbnd(@(x)(-1)*prod(x-t),t(1),t(length(t))))
Maxw=pi^5/factorial(5)*maxw
Pr=@(x)abs(P(x)-y(x))
MaxPr=Pr(fminbnd(Pr,t(1),t(length(t))))
