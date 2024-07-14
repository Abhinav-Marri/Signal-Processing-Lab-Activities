
N = 20;
w0 = 3*pi/10;
x = 0:1:19;
X = (-0.8).^x;

Y = fft(X,N);

figure()
subplot(2,2,1);
stem(Y);
sgtitle("X[n] = (-0.8)^n");
title("sequence");
xlabel("w");
ylabel("Magnitude");

subplot(2,2,2);
stem(abs(Y));
title("Magnitude");
xlabel("w");
ylabel("Magnitude");

subplot(2,2,[3,4]);
stem(angle(Y));
title("Phase");
xlabel("w");
ylabel("phase");