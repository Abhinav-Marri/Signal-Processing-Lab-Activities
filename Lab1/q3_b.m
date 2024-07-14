syms t;
xt = 1;


T = 1;
t1 = -0.1;
t2 = 0.1;
N = 10*T;

F = fourierCoeff(t, xt, T, t1, t2, N);

FS_idx = -N:N;

figure()
stem(FS_idx,T * F);
xlabel("index");
ylabel("Values");
title("Fourier Coefficients");
grid on;