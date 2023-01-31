clear; clc;

n=20;
MAX=1000;
A=randi(MAX,n);
X_old=randi(MAX,n,1)
X_new=X_old;
cond=cond(A)
XX=repmat(X_new',n,1);
B=sum(A.*XX,2);

if det(A)~=0
    %reverse matrix method
    disp("reverse matrix method:")
    X_new=inv(A)*B
    abs(X_new-X_old)
end

%Kramer's method
disp("Kramer's method:")
for i=1:n
    A_i=A;
    A_i(:,i)=B;
    X_new(i)=det(A_i)/det(A);
end
X_new
abs(X_new-X_old)

%Gauss method with selection of the main element
disp("Gauss method with selection of the main element:")
X_new=doGaussMethod(A,B)
abs(X_new - X_old)

% X = A \ B
disp("X = A \ B")
X_new = A \ B
abs(X_new - X_old)

%rref
disp("rref:")
rr=rref([A B])
X_new=rr(:,length(A)+1)
abs(X_new - X_old)
