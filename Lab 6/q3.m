t = 0:1:7; %length of signal has to be power of 2
x = cos(t);
X = radix2fft(x);
Y = fft(x);

figure()
subplot(1,2,1);
sgtitle("FFT");
stem(abs(X));
title("radix2 fft");
xlabel("w");
ylabel("mag");
subplot(1,2,2);
stem(abs(Y));
title("in-built fft");
xlabel("w");
ylabel("mag");