function[Xnext] = SIM(fi,x0,e)
    Xnext=fi(x0);
    n=1;
    while(abs(Xnext-x0)>e)
        x0=Xnext;
        Xnext=fi(Xnext);
        n=n+1;
    end
    fprintf("Количество итераций: %d\n", n);
end