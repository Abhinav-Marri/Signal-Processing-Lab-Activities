syms t;

xt = t;

T = 1;
t1 = -0.25;
t2 = 0.25;
N = 5;

F = fourierCoeff(t, xt, T, t1, t2, N);

FS_idx = -N:N;

figure()
stem(FS_idx,imag(F));
xlabel("index");
ylabel("Values");
title("Fourier Coefficients");
grid on;