
x = rand(10,1);
signal = zeros(10,1);
signal(4) = 1;

out1 = conv(x,signal);

out2 = cconv(x,signal,29);

figure();
subplot(2,2,1);
sgtitle("question 2");
stem(out1);
title("convolution");
xlabel("n");
ylabel("Mag");

subplot(2,2,2);
stem(out2);
title("circular convolution");
xlabel("n");
ylabel("Mag");


%-------------------------- DFT method -------------------
N = 20;
dft1 = fft(x,N);
dft2 = fft(signal,N);

out3 = dft1 .* dft2;

out3 = ifft(out3);

subplot(2,2,3);
stem(out3);
title("convolution using DFT");
xlabel("n");
ylabel("Mag");


N = 29;
dft1 = fft(x,N);
dft2 = fft(signal,N);

out4 = dft1 .* dft2;

out4 = ifft(out4);

subplot(2,2,4);
stem(out4);
title("circular convolution using DFT");
xlabel("n");
ylabel("Mag");





