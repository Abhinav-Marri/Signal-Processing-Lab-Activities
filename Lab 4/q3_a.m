
wc = pi/16;
X = 1;

x = inv_DTFT(X,wc);
t = -100:100;
figure()
subplot(2,1,1)
sgtitle("wc = pi");
plot(t,real(x));
title("Real Part of x[n]");
xlabel("n");
ylabel("Magnitude");

subplot(2,1,2)
plot(t,imag(x));
title("imaginary Part of x[n]");
xlabel("n");
ylabel("Magnitude");






