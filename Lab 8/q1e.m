% ------- rectangular window -------

syms w;
nc = 25;
x = exp(-1j*w*nc);

Y = inv_DTFT(x,pi/6);

X = Y(51:101);

n = 1:201;
fun = cos(pi*n/16) + 0.25 * sin(pi*n/16);

an = conv(fun,X);

figure()
subplot(2,1,1)
sgtitle("LPF using rectangular window");
stem(fun);
title("original signal");
xlabel("n");
ylabel("x[n]");

subplot(2,1,2);
stem(an);
title("Filtered signal");
xlabel("n");
ylabel("mag");

% -------- Blackman window ------------


syms w;
nc = 25;
x = exp(-1j*w*nc);
k = 1:1001;
Y = inv_DTFT(x,pi/6);

X = Y(51:101);

win = blackman(51);
win = transpose(win);
h = win .* X;

an = conv(fun,X);

figure()
subplot(2,1,1)
sgtitle("LPF using blackman window");
stem(fun);
title("original signal");
xlabel("n");
ylabel("x[n]");

subplot(2,1,2);
stem(an);
title("Filtered signal");
xlabel("n");
ylabel("mag");


% --------------- for different signal ---------------------
% ------- rectangular window -------

syms w;
nc = 25;
x = exp(-1j*w*nc);
Y = inv_DTFT(x,pi/6);

X = Y(51:101);

n = 1:201;
fun = cos(pi*n/16) + 0.25 .* randn(1,201);

an = conv(fun,X);

figure()
subplot(2,1,1)
sgtitle("LPF using rectangular window");
stem(fun);
title("original signal");
xlabel("n");
ylabel("x1[n]");

subplot(2,1,2);
stem(an);
title("Filtered signal");
xlabel("n");
ylabel("mag");

% -------- Blackman window ------------


syms w;
nc = 25;
x = exp(-1j*w*nc);
k = 1:1001;
Y = inv_DTFT(x,pi/6);

X = Y(51:101);

win = blackman(51);
win = transpose(win);
h = win .* X;

an = conv(fun,X);

figure()
subplot(2,1,1)
sgtitle("LPF using blackman window");
stem(fun);
title("original signal");
xlabel("n");
ylabel("x1[n]");

subplot(2,1,2);
stem(an);
title("Filtered signal");
xlabel("n");
ylabel("mag");
