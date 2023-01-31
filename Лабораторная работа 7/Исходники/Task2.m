syms x
y_0 = [1 0];
[t_1 y_1] = ode45(@oscil, [0 15], y_0);
grid on;
hold on;
plot(t_1, y_1(:, 1), '-b', 'LineWidth', 2);
[t_2 y_2] = ode23(@oscil, [0 15], y_0);
plot(t_2, y_2(:, 1), '--g', 'LineWidth', 2);

C_1 = 87/85;
C_2 = 26/85;
f = exp(-x) * (C_1 * cos(3*x) + C_2 * sin(3*x)) + (9 * sin(x) - 2 * cos(x)) / 85;
plot(0:0.5:15, subs(f, 0:0.5:15), '*r', 'LineWidth', 2);
title('Координата');
legend('ode45', 'ode23', 'Аналитически');

clf
hold on;
grid on;
plot(t_1, y_1(:, 2), '-b', 'LineWidth', 2);
plot(t_2, y_2(:, 2), '--g', 'LineWidth', 2);
plot(0:0.5:15, subs(diff(f, 1), 0:0.5:15), '*r', 'LineWidth', 2);
title('Скорость');
legend('ode45', 'ode23', 'Аналитически');
