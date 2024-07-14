w = -10:0.01:10;
n = 0:1:1000;

s = 5 * sin(pi/200 * n);
signal = s + randn(1,1001);

x = DT_Fourier(signal,1,w);
subplot(2,2,1)
sgtitle("DTFT of the various signals");
plot(w,abs(x));
title("DTFT of Unfiltered signal");

h1 = 1/5 * ones(1,5);
h2 = 1/21 * ones(1,21);
h3 = 1/51 * ones(1,51);

x = conv(h1,signal,'full');
x = DT_Fourier(x,1,w);
subplot(2,2,2)
plot(w,abs(x));
title("DTFT of filtered signal M = 5");

x = conv(h2,signal,'full');
x = DT_Fourier(x,1,w);
subplot(2,2,3)
plot(w,abs(x));
title("DTFT of filtered signal M = 21");

x = conv(h3,signal,'full');
x = DT_Fourier(x,1,w);
subplot(2,2,4)
plot(w,abs(x));
title("DTFT of filtered signal M = 51");