
syms t;
xt = cos(5*pi*t_fine) + sin(10*pi*t_fine);
t_fine = 0:0.001:2;


figure()
plot(t_fine,xt);
title("Plot of signal");
xlabel("time");
ylabel("mag");


t_sample = 0:0.1:2;
xn = cos(5*pi*t_sample) + sin(10*pi*t_sample);

figure()
stem(t_sample,xn);
title("Plot of signal");
xlabel("time");
ylabel("mag");