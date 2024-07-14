
w0 = 10000;
n = 0:1:100;

x = sin(100 * n);

y = cos(w0 * n) .* x;

figure()
stem(y);
title("Amplitude Modulated wave");
xlabel("n");
ylabel("Amplitude");

