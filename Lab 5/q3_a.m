N = 4;
L = 4;

X = [ones(L,1);zeros(N-L,1)];

Y = fft(X,N);
figure()
subplot(2,2,1);
sgtitle("4-Point DTFT of x[n]");
stem(Y);
title("sequence");
xlabel("w");
ylabel("Magnitude");

subplot(2,2,2);
stem(abs(Y));
title("Magnitude");
xlabel("w");
ylabel("Magnitude");

subplot(2,2,[3,4]);
stem(angle(Y));
title("Phase");
xlabel("w");
ylabel("phase");
%----------------------------------------------------------
N = 16;
L = 4;

X = [ones(L,1);zeros(N-L,1)];

Y = fft(X,N);

figure()
subplot(2,2,1);
sgtitle("16-Point DTFT of x[n]");
stem(Y);
title("sequence");
xlabel("w");
ylabel("Magnitude");

subplot(2,2,2);
stem(abs(Y));
title("Magnitude");
xlabel("w");
ylabel("Magnitude");

subplot(2,2,[3,4]);
stem(angle(Y));
title("Phase");
xlabel("w");
ylabel("phase");


%---------------------------------------------------------
N = 64;
L = 4;

X = [ones(L,1);zeros(N-L,1)];

Y = fft(X,N);

figure()
subplot(2,2,1);
sgtitle("64-Point DTFT of x[n]");
stem(Y);
title("sequence");
xlabel("w");
ylabel("Magnitude");

subplot(2,2,2);
stem(abs(Y));
title("Magnitude");
xlabel("w");
ylabel("Magnitude");

subplot(2,2,[3,4]);
stem(angle(Y));
title("Phase");
xlabel("w");
ylabel("phase");
