
[y,Fs] = audioread("Audio Files_5.wav");

N = length(y);
fx = Fs*(-N/2:N/2-1)/N;
Y = fft(y,N);
Y = fftshift(Y);
figure()
plot(fx,abs(Y));
title("DFT of given audio file");
xlabel("freq(Hz)");
ylabel("Mag");


[y,Fs] = audioread("24.wav");

N = length(y);
fx = Fs*(-N/2:N/2-1)/N;
Y = fft(y,N);
Y = fftshift(Y);

figure()
plot(fx,abs(Y));
title("DFT of File read");
xlabel("freq(Hz)");
ylabel("Mag");

