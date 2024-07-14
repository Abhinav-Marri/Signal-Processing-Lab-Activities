% cost

syms t;
w = -5:0.1:5;
a = -pi;
b = pi;

xt = cos(t);

X = continuousFT(t,xt,a,b,w);

figure()
subplot(2,2,1);
sgtitle("CTFT of cos(t)");
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


% e^jt



syms t;
w = -5:0.1:5;
a = -pi;
b = pi;

xt = exp(-1j * t);

X = continuousFT(t,xt,a,b,w);

figure()
subplot(2,2,1);
sgtitle("CTFT of exp");
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

