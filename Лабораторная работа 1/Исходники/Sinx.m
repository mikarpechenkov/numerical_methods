function [result] = Sinx(a)
    syms x;
    n=0;
    answ=x;
    sum=0;
    b=true;
    t=0;
    result=0;
    while(b)
        sum=sum+answ;
        t=double(subs(answ,x,a));
        result = result + vpa(t,16)
        coeff=(-x^2)/(2*n+2)/(2*n+3);
        answ=answ*coeff;
        if(abs(t)>=10^(-17))
            n=n+1;
        else
            b=false;
        end
    end
    %result = vpa(subs(sum,x,a),16)
end