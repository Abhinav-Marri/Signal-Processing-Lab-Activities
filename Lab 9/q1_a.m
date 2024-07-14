A = [0.5 0.5];
F = [350 440];
P = [0 0];
fs = 10000;
td = 4;

n = 0:1/fs:td-1/fs;

x1 = SineSum(A, F, P, td, fs);

sound(x1);
pause(5);

figure()
subplot(3, 1, 1)
plot(x1(1:500))
title("Signal")
ylabel("x_1[n]")
xlabel("n")

F = [480 620];
td1 = 0.5;

b1 = SineSum(A, F, P, td1, fs);

n1 = 0:1/fs:td1-1/fs;

z1 = zeros(1, length(n1));

x2 = [b1, z1, b1, z1, b1, z1, b1, z1];

sound(x2);
pause(5);

subplot(3, 1, 2)
plot(x2(1:500))
title("Signal")
ylabel("x_2[n]")
xlabel("n")

F = [440 480];

b2 = SineSum(A, F, P, td1, fs);

z2 = zeros(1, length(n1));

x3 = [b2, z2, b2, z2, b2, z2, b2, z2];

sound(x3);
pause(5);

subplot(3, 1, 3)
plot(x3(1:500))
title("Signal")
ylabel("x_3[n]")
xlabel("n")
