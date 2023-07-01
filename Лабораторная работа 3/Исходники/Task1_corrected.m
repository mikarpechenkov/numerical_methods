clear; clc;
syms x;
y=@(x)sin(pi*x);
t=[0 1/6 1/3 1/2];
X=0:1/4:1
Y=y(X);
Apoints=[];
Bpoints=[];
ta=1;
for i=1:1:length(Y)-1
while(t(i)>X(ta+1))
ta=ta+1
end
Apoints=[Apoints (Y(ta+1)-Y(ta))/(X(ta+1)-X(ta))];
Bpoints=[Bpoints Y(ta)-X(ta)*Apoints(i)];
ta=1;
end
Apoints
Bpoints
hold on; grid on; xlabel('x'); ylabel('y');
fplot(y,[0 1])
for i=1:1:length(Y)-1
plot(t(i),t(i)*Apoints(i)+Bpoints(i),'or')
end
InterPointsY=[t.*Apoints+Bpoints]
SinPointY=y(t)
P=LagPoly(X,y(X))
P(x)
ezplot(P(x),[0 1])
for i=1:1:length(t)
P(t(i))
plot(t(i),P(t(i)),'og')
end
dfminus=matlabFunction(-diff(y,x,length(X)))
df=matlabFunction(diff(y,x,length(X))) 
w=@(x)prod(x-X)
w(x) 
maxwX=fminbnd(@(x)(-1)*prod(x-X),X(1),X(length(X))) 
maxw=w(maxwX) 
maxdf=df(fminbnd(dfminus,X(1),X(length(X)))) 
MaxwTheory=maxdf/factorial(length(X))*maxw
Prminus=matlabFunction(-abs(P(x)-y(x))) 
Pr=matlabFunction(abs(P(x)-y(x))) 
MaxPractice=Pr(fminbnd(Prminus,X(1),X(length(X))))
R=feval(df,x)/factorial(length(X))*w(x) 
fplot(R,[0 1]) 
ylim([-MaxwTheory, MaxwTheory])