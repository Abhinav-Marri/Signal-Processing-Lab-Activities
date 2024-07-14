syms t;
xt = 2 * cos(2 * pi * t) + cos(6 * pi * t);

T = 1;
t1 = -T/2;
t2 = T/2;
N = 5;

F = fourierCoeff(t, xt, T, t1, t2, N);

time_grid = -0.5:0.01:0.5;
x_final = 2 * cos(2 * pi * time_grid) + cos(6 * pi * time_grid);

y = partialfouriersum(F, T, time_grid, N);

disp("MAE");
MAE = max(abs(y - x_final));
disp(MAE);
disp("RMSE");
RMSE = sqrt(mean((y - x_final).^2));
disp(RMSE);
