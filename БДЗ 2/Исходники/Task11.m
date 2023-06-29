f = @(x) cos(1./(1-x))./(1+x.^2).^2;
a = 9; 
b = 10000; % Верхний предел интегрирования (достаточно большое значение)
n = 1000; % Количество разбиений
disp('Мои вычисления')
result = byMethodRunge(a, b, n, f, 10^-9);
disp(result);
disp('Стандартная реализация');
defaultResult=integral(f,a,Inf);
disp(defaultResult);
