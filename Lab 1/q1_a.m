syms t;
xt = 2 * cos(2 * pi * t) + cos(6 * pi * t);

T = 1;
t1 = -0.5;
t2 = 0.5;
N = 5;

F = fourierCoeff(t, xt, T, t1, t2, N);

FS_idx = -N:N;

figure()
stem(FS_idx, F);
xlabel("index");
ylabel("Values");
title("Fourier Coefficients");
grid on;