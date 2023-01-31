function[Xnext] = SIM(fi,x0,e)
    X=x0;
    Xnext=X+2*e;
    n=0;
    while(abs(Xnext-X)>=e)
        X=Xnext;
        Xnext=fi(Xnext);
        n=n+1;
    end
    fprintf("Количество итераций: %d\n", n);
end