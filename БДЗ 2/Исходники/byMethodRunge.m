function [ShNext] = byMethodRunge(a,b,counter,f,eps)
X=a:(b-a)/(counter-1):b;
h=X(2)-X(1);
F=f(X);
s = sum(F);
Sh=h*(s-1/2*F(1)-1/2*F(length(F)));
counter = counter*2-1;
X=a:(b-a)/(counter-1):b;
h=h/2;
F=f(X);
ShNext=Sh/2+h*(sum(F)-s);
step=0;
while(abs(Sh-ShNext)/3>eps)
    Sh=ShNext;
    s=sum(F);
    counter = counter*2-1;
    X=a:(b-a)/(counter-1):b;
    h=h/2;
    F=f(X);
    ShNext=Sh/2+h*(sum(F)-s);
    step=step+1; 
end
step
ShNext;
end