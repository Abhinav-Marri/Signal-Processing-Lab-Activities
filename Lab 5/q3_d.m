
N = 20;
w0 = 3*pi/10;
x = 0:1:19;
X = sin(w0*(x-1));

Y = fft(X,N);

figure()
subplot(2,2,1);
stem(Y);
sgtitle("X[n] = sin(w0(n-1))");
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