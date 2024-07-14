% T = 1
syms t;
w = -5:0.1:5;
a = -1;
b = 1;

xt = 1;

X = continuousFT(t,xt,a,b,w);

figure()
subplot(2,2,1);
sgtitle("CTFT of pulse (T = 1)");
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

% T = 4


syms t;
w = -5:0.1:5;
a = -4;
b = 4;

xt = 1;

X = continuousFT(t,xt,a,b,w);

figure()
subplot(2,2,1);
sgtitle("CTFT of pulse (T = 4)");
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

