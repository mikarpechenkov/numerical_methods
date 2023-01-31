clear; clc;
n=5;
limit=20;
A=randi(limit,n)
B=randi(limit,n,1)
%inverse matrix method
if det(A)~=0
    X=inv(A)*B
end
%Kramer's method
for i=1:n
    A_i=A;
    A_i(:,i)=B;
    X(i)=det(A_i)/det(A);
end
X