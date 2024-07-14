
syms w;
nc = 25;
x = exp(-1j*w*nc);
k = 1:1001;
Y = inv_DTFT(x,pi/6);

X = Y(51:101);

Xt = fft(X,1001);

final = fftshift(Xt);
figure()
subplot(3,1,1);
sgtitle("LPF");
stem(X);
title("Impulse response");
xlabel("n");
ylabel("amplitude");
subplot(3,1,2);
plot(20*log(abs(final/max(final))));
title("1001 - DFT (Magnitude)");
xlabel("k");
ylim([-100,10]);
ylabel("mag");

subplot(3,1,3);
plot(angle(final));
title("1001 - DFT (Phase)");
xlabel("k");
ylabel("phase");





