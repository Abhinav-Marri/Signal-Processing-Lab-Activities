syms t;
% xt = 0.5 + 1/2 * square((2* pi*(t - 1/4)));
xt = 1;
T = 1;
t1 = -1/4;
t2 = 1/4;
N = 10;

F = fourierCoeff(t, xt, T, t1, t2, N);

FS_idx = -N:N;

figure()
stem(FS_idx, F);
xlabel("index");
ylabel("Values");
title("Fourier Coefficients");
grid on;