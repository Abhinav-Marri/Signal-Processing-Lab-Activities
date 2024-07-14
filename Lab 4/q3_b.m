% ------------pi/8------------------
wc = pi/8;
X = 1;

x = inv_DTFT(X,wc);
t = -100:100;
figure()
subplot(2,1,1)
sgtitle("wc = pi/8");
plot(t,real(x));
title("Real Part of x[n]");
xlabel("n");
ylabel("Magnitude");

subplot(2,1,2)
plot(t,imag(x));
title("imaginary Part of x[n]");
xlabel("n");
ylabel("Magnitude");



%------------------pi/4---------------


wc = pi/4;
X = 1;

x = inv_DTFT(X,wc);
t = -100:100;
figure()
subplot(2,1,1)
sgtitle("wc = pi/4");
plot(t,real(x));
title("Real Part of x[n]");
xlabel("n");
ylabel("Magnitude");

subplot(2,1,2)
plot(t,imag(x));
title("imaginary Part of x[n]");
xlabel("n");
ylabel("Magnitude");

% -----------------pi/2---------------


wc = pi/2;
X = 1;

x = inv_DTFT(X,wc);
t = -100:100;
figure()
subplot(2,1,1)
sgtitle("wc = pi/2");
plot(t,real(x));
title("Real Part of x[n]");
xlabel("n");
ylabel("Magnitude");

subplot(2,1,2)
plot(t,imag(x));
title("imaginary Part of x[n]");
xlabel("n");
ylabel("Magnitude");