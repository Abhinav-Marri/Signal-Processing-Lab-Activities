f0 = 12;
fs = 64;
L = 16;
n = 0:1:L-1;

p = cos(2*pi*f0*n/fs);

N = 8 * L;

Y = fft(p,N);

figure()
subplot(2,2,1);
sgtitle("DFT of x[n]");
stem(abs(Y));
title("L = 16");
xlabel("w");
ylabel("Mag");

L = 32;
n = 0:1:L-1;

p = cos(2*pi*f0*n/fs);

N = 8 * L;
Y = fft(p,N);

subplot(2,2,2);
stem(abs(Y));
title("L = 32");
xlabel("w");
ylabel("Mag");

L = 64;
n = 0:1:L-1;

p = cos(2*pi*f0*n/fs);

N = 8 * L;
Y = fft(p,N);

subplot(2,2,3);
plot(abs(Y));
title("L = 64");
xlabel("w");
ylabel("Mag");


L = 128;
n = 0:1:L-1;

p = cos(2*pi*f0*n/fs);

N = 8 * L;
Y = fft(p,N);

subplot(2,2,4);
plot(abs(Y));
title("L = 128");
xlabel("w");
ylabel("Mag");



