function[derNext] = DerSquare(f,x0,eps)
h=eps;
res=0;
der=(f(x0+h)-f(x0-h))/2/h
h=h/2;
derNext=(f(x0+h)-f(x0-h))/2/h;
while(abs(der-derNext)>=eps)
    deltaDer=abs(der-derNext)
    h=h/2
    der=derNext;
    derNext=(f(x0+h)-f(x0-h))/2/h;
end
h
deltaDer=abs(der-derNext)