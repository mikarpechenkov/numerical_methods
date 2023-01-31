function [res] = integrateByTrapezoid(h,F)
res=0;
steps=0;
for i=2:1:length(F)
    res=res+(F(i)+F(i-1))*h/2;
    steps=steps+1;
end
steps
end