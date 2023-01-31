clear;
clc; clf;
syms x;
y_diff = matlabFunction(x^2);
x0 = 0;
y0 = 1;
X = 1;
count = 10;
step = (X - x0) / count;

f1 = matlabFunction(x^3 / 3 + 1);
hold on;
grid on;
plot(-X:step:X, f1(-X:step:X), '-g');

t1 = x0:step:X;
y1 = zeros(1, count + 1);
y1(1) = y0;
for i = 1:count
    y1(i+1) = y1(i)+step*y_diff(t1(i));
end
plot(t1, y1, '--b');

t2 = -X:step:x0;
y2 = zeros(1, count + 1);
y2(count + 1) = y0;
for i = 0:count-1
    y2(count - i) = y2(count - i + 1) - step * subs(y_diff, t2(count - i));
end
plot(t2, y2, '--b');