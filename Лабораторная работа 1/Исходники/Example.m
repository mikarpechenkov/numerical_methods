clear; clc;

format long e;
a=1;
b=1/10^(16);
for i=1:1:10^(6)
    i
    a=a+1/10^(16);
end
a

format long e;
a=1;
b=1/10^(16);
for i=1:1:10^(6)
    i
    b=b+1/10^(16);
end
a=b+a