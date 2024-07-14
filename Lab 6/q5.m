
t_samples = 0:0.1:2;
t_fine = 0:0.001:2;
MAE = zeros(length(t_fine),1);

xt = cos(5 * pi * t_samples) + sin(10 * pi * t_samples);
n = 1:length(xt);
x = cos(5 * pi * t_fine) + sin(10 * pi * t_fine);

subplot(2,2,1);
stem(t_samples,xt);
hold on;
plot(t_fine,x)
title('Sampling the signal');
xlabel("n");
ylabel("mag");

subplot(2,2,2);
y = interp1(t_samples,xt,t_fine,'next');
stem(t_samples,xt);
hold on
plot(t_fine,y);
title('zero order interpolation');
xlabel("n");
ylabel("mag");

for it = 251: 1: 1751
    MAE(it,1) = abs(y(it) - x(it));
end

disp("MAE for 0-order interpolation = ");
disp(max(MAE));

subplot(2,2,3);
y = interp1(t_samples,xt,t_fine,'linear');
stem(t_samples,xt);
hold on
plot(t_fine,y);
title('linear order interpolation');
xlabel("n");
ylabel("mag");

for it = 251: 1: 1751
    MAE(it,1) = abs(y(it) - x(it));
end

disp("MAE for linear interpolation = ");
disp(max(MAE));

subplot(2,2,4);
y = sinc_recon(n,xt,0.1,t_fine);
stem(t_samples,xt);
hold on
plot(t_fine,y);
title('sinc interpolation');
xlabel("n");
ylabel("mag");

for it = 251: 1 : 1751
    MAE(it,1) = abs(y(it) - x(it));
end

disp("MAE for sinc interpolation = ");
disp(max(MAE));