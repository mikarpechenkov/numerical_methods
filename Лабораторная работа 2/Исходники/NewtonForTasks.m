function[x] = NewtonForTasks(F,x0,a,b,p,e)
    syms x;
%     F1=matlabFunction(diff(F,x,1));
%     F2=matlabFunction(diff(F,x,2));
%     min1=fminbnd(matlabFunction(diff(F,x)),a,b);
%     min2=fminbnd(matlabFunction(diff(F,x,2)),a,b);
%     max1=fminbnd(matlabFunction(-diff(F,x)),a,b);
%     max2=fminbnd(matlabFunction(-diff(F,x,2)),a,b);
%     F1(min1);
%     F2(min2);
%     F1(max1);
%     F2(max2);
%     if((F1(min1)>0 && F2(min2)>0 && x0==b) || (F1(max1)<0 && F2(max2)<0 && x0==b) || (F1(min1)>0 && F2(max2)<0 && x0==a) || (F1(max1)<0 && F2(min2)>0 && x0==a))
%         fprintf("Можно работать!\n"); 
%         x=NewtonsMethod(F,x0,p,e)
%     end
%     x0=a;
%     if((F1(min1)>0 && F2(min2)>0 && x0==b) || (F1(max1)<0 && F2(max2)<0 && x0==b) || (F1(min1)>0 && F2(max2)<0 && x0==a) || (F1(max1)<0 && F2(min2)>0 && x0==a))
%         fprintf("Мжно работать!\n"); 
%         x=NewtonsMethod(F,x0,p,e)
%     end
    x=NewtonsMethod(F,x0,p,e);
end