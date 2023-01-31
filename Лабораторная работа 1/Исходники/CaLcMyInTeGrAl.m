function [answ] = CaLcMyInTeGrAl(n)
    syms x;
    func=x^n*exp(x-1);
    if(n==1)
        answ=1/exp(1);
        %answ=int(func,x,0,1)
    else
        if(n>1)
            answ=1-n*CaLcMyInTeGrAl(n-1)
        end
        if(n<1)
            fprintf('Ошибка входных данных!');
        end
    end
    plot(n,answ,'or');
end