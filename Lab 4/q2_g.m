n = 0:1:1000;

s = 5 * sin(pi/200 * n);
v = randn(1,1001);
figure()
subplot(2,2,1)
sgtitle("Noise filter");
plot(s+v,'b');
hold on
plot(s,'red','LineWidth',1.5);
title("Plot of signal");

h1 = [1,-1];

output = conv(h1,s+v,'full');

subplot(2,2,2)
plot(output,'b');
hold on
plot(s,'red','LineWidth',1.5);
title("filtered signal");

% ---------------------------------------------------------------------------

w = -10:0.01:10;
n = 0:1:1000;

s = 5 * sin(pi/200 * n);
signal = s + randn(1,1001);

x = DT_Fourier(signal,1,w);
h1 = [1,-1];

x = conv(h1,signal,'full');
x = DT_Fourier(x,1,w);
subplot(2,2,[3,4])
plot(w,abs(x));
title("DTFT of filtered signal");





