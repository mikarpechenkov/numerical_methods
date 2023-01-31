function [res] = integrateBySimpson(h,F)
res=0;
for i=3:2:length(F)
    res=res+h/6*(F(i-2)+F(i)+4*F(i-1));
end
end