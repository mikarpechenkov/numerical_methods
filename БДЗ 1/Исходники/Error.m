function[res] = Error(X,y,P)
    syms x;
    dfminus=matlabFunction(-diff(y,x,length(X)));
    df=matlabFunction(diff(y,x,length(X)));
    w=matlabFunction(prod(x-X));
    maxwX=fminbnd(matlabFunction((-1)*prod(x-X)),X(1)-1,X(length(X))+1);
    maxw=abs(w(maxwX));
    maxdf=abs(df(fminbnd(dfminus,X(1),X(length(X)))));
    MaxTheory=maxdf/factorial(length(X))*maxw
    Prminus=matlabFunction(-abs(P(x)-y(x)));
    Pr=matlabFunction(abs(P(x)-y(x)));
    MaxPractice=Pr(fminbnd(Prminus,X(1),X(length(X))))
    R=feval(df,x)/factorial(length(X))*w(x);
    fplot(R,[1 5]);
    res=[MaxTheory, MaxPractice];
end