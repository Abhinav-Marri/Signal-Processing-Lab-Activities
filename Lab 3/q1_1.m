
load('q1.mat');
delta = zeros(101,1);
delta(1,1) = 1;

N = 101;
[y,delta] = MA(delta,N);

Ma = MA(x,N);

final = conv(y,x);
figure()
stem(final);
hold on
stem(Ma);
title("Convolution with system func");
xlabel("n");
ylabel("Magnitude");
