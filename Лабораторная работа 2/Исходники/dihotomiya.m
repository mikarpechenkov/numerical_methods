function[x] = dihotomiya(f,a,b,e)
    x=0;
    n=floor(log2(abs((b-a))/e))+1;
    c=0;
    if(f(a)*f(b)>0)
        fprintf("В данном отрезке нет корня!")
    else
        if(f(a)*f(b)==0)
            if(f(a)==0)
                x=a;
            end
            if(f(b)==0)
                x=b;
            end
        end
        if(f(a)*f(b)<0)     
            for i=1:1:n
                c=(b+a)/2;
                if(f(a)*f(c)<0)
                    b=c;
                end
                if(f(a)*f(c)>0)
                    a=c;
                end
                if(f(a)*f(c)==0)
                    x=c;
                    break;
                end
                if(abs((b-a))<=e)
                    x=a;
                    break;
                end
            end
            fprintf("Количество итераций: %d\n", n);
        end
    end
end