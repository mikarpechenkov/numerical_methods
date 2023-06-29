function[Xnext] = NewtonsMethod(f,x0,p,e)
    format long;
    syms x;
    X=x0;
    n=0;
    Xnext=X+2*e;
    while(abs(Xnext-X)>=e)
        X=Xnext;
        der=matlabFunction(diff(f,x,1));
        Xnext=X-p*f(X)/der(X);
        n=n+1;
    end
    fprintf("Количество итераций: %d\n", n);
end