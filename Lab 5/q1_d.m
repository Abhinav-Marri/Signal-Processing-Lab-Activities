f0 = 12;
fs = 64;
L = 16;
n = 0:1:L-1;

p = cos(2*pi*f0*n/fs);

N = L;

Y = fft(p,N);

figure()
subplot(2,2,1);
sgtitle("DFT of x[n]");
stem(abs(Y));
title("N = L");
xlabel("w");
ylabel("Mag");

N = 2*L;
Y = fft(p,N);

subplot(2,2,2);
stem(abs(Y));
title("N = 2L");
xlabel("w");
ylabel("Mag");

N = 4*L;
Y = fft(p,N);

subplot(2,2,3);
plot(abs(Y));
title("N = 4L");
xlabel("w");
ylabel("Mag");

N = 8*L;
Y = fft(p,N);

subplot(2,2,4);
plot(abs(Y));
title("N = 8L");
xlabel("w");
ylabel("Mag");



