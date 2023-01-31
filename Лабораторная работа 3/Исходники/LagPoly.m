function[P] = LagPoly(t,F)
syms x;
temp = repmat (t',1,length(t));
power = repmat (0:(length(t)-1),length(t),1);
A = temp.^power;
B=F';
X=inv(A)*B;
P=@(x)(sum(vpa(X'.*x.^power(1,:),10)));
end