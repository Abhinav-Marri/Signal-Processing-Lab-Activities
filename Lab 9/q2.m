N = 15;
k = 1:1:N;

for it = 1:N
    A(it) = 1/k(it);
end

P = zeros(N);
f0 = 200;
fs = 10000;
td = 1;
n = 0:1/fs:td-1/fs;

x1 = harmonics(A,f0,P,td,fs);

soundsc(x1);
pause(5);

figure()
subplot(3, 1, 1)
plot(x1(1:500))
title("Signal")
ylabel("x_1[n]")
xlabel("n")


for it = 1:N
    A(it) = k(it);
end

x2 = harmonics(A,f0,P,td,fs);

soundsc(x2);

subplot(3, 1, 2)
plot(x2(1:500))
title("Signal")
ylabel("x_1[n]")
xlabel("n")

