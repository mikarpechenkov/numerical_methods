clear; clc;
n=5;
limit=20;
A=randi(limit,n)
B=randi(limit,n,1)
X1=doGaussMethod(A,B)
%checking
X2=inv(A)*B
rr=rref([A B])
X3=rr(:,length(A)+1)