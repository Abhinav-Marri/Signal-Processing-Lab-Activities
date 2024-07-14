
w0 = 1;
syms t;
time_grid = -4*pi:0.01:4*pi;
xt = cos(t);
T = 2*pi;
wc = 2;

A = fourierCoeff(t,xt,2*pi,-T/2,T/2,10);
B = myLPF(A,w0,wc);

signal1 = partialfouriersum(A,T,time_grid,10);
signal2 = partialfouriersum(B,T,time_grid,10);

figure()
subplot(2,2,1);
sgtitle("LPF");
stem(A);
title("FS of cos(t)");
xlabel("n");
ylabel("mag");

subplot(2,2,2);
stem(B);
title("FS after LPF");
xlabel("n");
ylabel("mag");

subplot(2,2,3);
plot(signal1);
title("reconstructed from A");
xlabel("n");
ylabel("mag");

subplot(2,2,4);
plot(signal2);
title("reconstructed from B");
xlabel("n");
ylabel("mag");


% -----------------------------------------------------


w0 = 1;
syms t;
time_grid = -4*pi:0.01:4*pi;
xt = cos(t);
T = 2*pi;
wc = 0.5;

A = fourierCoeff(t,xt,2*pi,-T/2,T/2,10);
B = myLPF(A,w0,wc);

signal1 = partialfouriersum(A,T,time_grid,10);
signal2 = partialfouriersum(B,T,time_grid,10);

figure()
subplot(2,2,1);
sgtitle("LPF");
stem(A);
title("FS of cos(t)");
xlabel("n");
ylabel("mag");

subplot(2,2,2);
stem(B);
title("FS after LPF");
xlabel("n");
ylabel("mag");

subplot(2,2,3);
plot(signal1);
title("reconstructed from A");
xlabel("n");
ylabel("mag");

subplot(2,2,4);
plot(signal2);
title("reconstructed from B");
xlabel("n");
ylabel("mag");


%%% HPF --------------------------------------------------


w0 = 1;
syms t;
time_grid = -4*pi:0.01:4*pi;
xt = cos(t);
T = 2*pi;
wc = 2;

A = fourierCoeff(t,xt,2*pi,-T/2,T/2,10);
B = myHPF(A,w0,wc);

signal1 = partialfouriersum(A,T,time_grid,10);
signal2 = partialfouriersum(B,T,time_grid,10);

figure()
subplot(2,2,1);
sgtitle("HPF");
stem(A);
title("FS of cos(t)");
xlabel("n");
ylabel("mag");

subplot(2,2,2);
stem(B);
title("FS after HPF");
xlabel("n");
ylabel("mag");

subplot(2,2,3);
plot(signal1);
title("reconstructed from A");
xlabel("n");
ylabel("mag");

subplot(2,2,4);
plot(signal2);
title("reconstructed from B");
xlabel("n");
ylabel("mag");


% -----------------------------------------------------


w0 = 1;
syms t;
time_grid = -4*pi:0.01:4*pi;
xt = cos(t);
T = 2*pi;
wc = 0.5;

A = fourierCoeff(t,xt,2*pi,-T/2,T/2,10);
B = myHPF(A,w0,wc);

signal1 = partialfouriersum(A,T,time_grid,10);
signal2 = partialfouriersum(B,T,time_grid,10);

figure()
subplot(2,2,1);
sgtitle("HPF");
stem(A);
title("FS of cos(t)");
xlabel("n");
ylabel("mag");

subplot(2,2,2);
stem(B);
title("FS after HPF");
xlabel("n");
ylabel("mag");

subplot(2,2,3);
plot(signal1);
title("reconstructed from A");
xlabel("n");
ylabel("mag");

subplot(2,2,4);
plot(signal2);
title("reconstructed from B");
xlabel("n");
ylabel("mag");

% -------------------------------------------------------

w0 = 1;
syms t;
time_grid = -4*pi:0.01:4*pi;
xt = cos(t);
T = 2*pi;

A = fourierCoeff(t,xt,2*pi,-T/2,T/2,10);
B = NonIdeal(A,w0,1,1);

signal1 = partialfouriersum(A,T,time_grid,10);
signal2 = partialfouriersum(B,T,time_grid,10);

figure()
subplot(2,2,1);
sgtitle("Non - Ideal");
stem(A);
title("FS of cos(t)");
xlabel("n");
ylabel("mag");

subplot(2,2,2);
stem(B);
title("FS after NON-Ideal filter");
xlabel("n");
ylabel("mag");

subplot(2,2,3);
plot(signal1);
title("reconstructed from A");
xlabel("n");
ylabel("mag");

subplot(2,2,4);
plot(signal2);
title("reconstructed from B");
xlabel("n");
ylabel("mag");
