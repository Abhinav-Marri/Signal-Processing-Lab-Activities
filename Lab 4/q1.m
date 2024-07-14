
w = -10:0.01:10;


% ---------------delta--------------

N0 = 1;
delta = zeros(101,1);
delta(1,1) = 1;
X = DT_Fourier(delta,N0,w);

figure()
sgtitle("Delta")
subplot(2,2,1);
plot(abs(X));
title("Magnitude Plot");
xlabel("w");
ylabel("Magnitude");

subplot(2,2,2);
plot(angle(X));
title("Phase Plot");
xlabel("w");
ylabel("Phase");

subplot(2,2,3);
plot(real(X));
title("Real part");
xlabel("w");
ylabel("Magnitude");

subplot(2,2,4);
plot(imag(X));
title("Imaginary Plot");
xlabel("w");
ylabel("Magnitude");

% -----------------shifted delta-------------
N0 = 4;
delta = zeros(101,1);
delta(1,1) = 1;
X = DT_Fourier(delta,N0,w);

figure()
sgtitle("Shifted Delta")
subplot(2,2,1);
plot(abs(X));
title("Magnitude Plot");
xlabel("w");
ylabel("Magnitude");

subplot(2,2,2);
plot(angle(X));
title("Phase Plot");
xlabel("w");
ylabel("Phase");

subplot(2,2,3);
plot(real(X));
title("Real part");
xlabel("w");
ylabel("Magnitude");

subplot(2,2,4);
plot(imag(X));
title("Imaginary Plot");
xlabel("w");
ylabel("Magnitude");


% ------------------sqaure-----------------

N0 = 4;
delta = zeros(101,1);
for it = 1:7
delta(it,1) = 1;
end
X = DT_Fourier(delta,N0,w);

figure()
sgtitle("Square Wave")
subplot(2,2,1);
plot(abs(X));
title("Magnitude Plot");
xlabel("w");
ylabel("Magnitude");

subplot(2,2,2);
plot(angle(X));
title("Phase Plot");
xlabel("w");
ylabel("Phase");

subplot(2,2,3);
plot(real(X));
title("Real part");
xlabel("w");
ylabel("Magnitude");

subplot(2,2,4);
plot(imag(X));
title("Imaginary Plot");
xlabel("w");
ylabel("Magnitude");
% -----------------sin---------------------

N0 = 201;
delta = zeros(101,1);
for it = 1:401
delta(it,1) = sin(pi/4 * (it-201));
end
X = DT_Fourier(delta,N0,w);

figure()
sgtitle("Sine wave")
subplot(2,2,1);
plot(abs(X));
title("Magnitude Plot");
xlabel("w");
ylabel("Magnitude");

subplot(2,2,2);
plot(angle(X));
title("Phase Plot");
xlabel("w");
ylabel("Phase");

subplot(2,2,3);
plot(real(X));
title("Real part");
xlabel("w");
ylabel("Magnitude");

subplot(2,2,4);
plot(imag(X));
title("Imaginary Plot");
xlabel("w");
ylabel("Magnitude");

% ------------------a^(n)-----------------

N0 = 1;
a = 0.01;
t1 = zeros(101,1);
for it = 1:101
    t1(it) = a^(it-1);
end

t2 = zeros(101,1);
b = -a;
for it = 1:101
    t2(it) = (b)^(it-1);
end

X = DT_Fourier(t1,N0,w);
X2 = DT_Fourier(t2,N0,w);

figure()
sgtitle("b = 0.01")
subplot(2,2,1);
plot(t1);
title("singal Plot");
xlabel("t");
ylabel("Magnitude");

subplot(2,2,2);
plot(t2);
title("negative value signal Plot");
xlabel("t");
ylabel("magnitude");

subplot(2,2,3);
plot(abs(X));
title("Magnitude Plot");
xlabel("w");
ylabel("Magnitude");

subplot(2,2,4);
plot(abs(X2));
title("Magnitude Plot");
xlabel("w");
ylabel("Magnitude");

% -----------------------a^n----------------

N0 = 1;
a = 0.5;
t1 = zeros(101,1);
for it = 1:101
    t1(it) = a^(it-1);
end

t2 = zeros(101,1);
b = -a;
for it = 1:101
    t2(it) = (b)^(it-1);
end

X = DT_Fourier(t1,N0,w);
X2 = DT_Fourier(t2,N0,w);

figure()
sgtitle("b = 0.5")
subplot(2,2,1);
plot(t1);
title("singal Plot");
xlabel("t");
ylabel("Magnitude");

subplot(2,2,2);
plot(t2);
title("negative value signal Plot");
xlabel("t");
ylabel("magnitude");

subplot(2,2,3);
plot(abs(X));
title("Magnitude Plot");
xlabel("w");
ylabel("Magnitude");

subplot(2,2,4);
plot(abs(X2));
title("Magnitude Plot");
xlabel("w");
ylabel("Magnitude");

%---------------------a^n------------------

N0 = 1;
a = 0.99;
t1 = zeros(101,1);
for it = 1:101
    t1(it) = a^(it-1);
end

t2 = zeros(101,1);
b = -a;
for it = 1:101
    t2(it) = (b)^(it-1);
end

X = DT_Fourier(t1,N0,w);
X2 = DT_Fourier(t2,N0,w);

figure()
sgtitle("b = 0.99")
subplot(2,2,1);
plot(t1);
title("singal Plot");
xlabel("t");
ylabel("Magnitude");

subplot(2,2,2);
plot(t2);
title("negative value signal Plot");
xlabel("t");
ylabel("magnitude");

subplot(2,2,3);
plot(abs(X));
title("Magnitude Plot");
xlabel("w");
ylabel("Magnitude");

subplot(2,2,4);
plot(abs(X2));
title("Magnitude Plot");
xlabel("w");
ylabel("Magnitude");