
syms t;
w = -5:0.1:5;
a = -pi;
b = pi;

xt = heaviside(t+1/2) - heaviside(t-1/2);

X = continuousFT(t,xt,a,b,w).^2;


figure()
subplot(2,2,1);
sgtitle("CTFT of triangle");
plot(real(X));
title("real part");
xlabel("w");
ylabel("amplitude");

subplot(2,2,2);
plot(imag(X));
title("imaginary part");
xlabel("w");
ylabel("amplitude");

subplot(2,2,3);
plot(abs(X));
title("Magnitude");
xlabel("w");
ylabel("Mag");

subplot(2,2,4);
plot(angle(X));
title("Phase");
xlabel("w");
ylabel("phase");