n = 0:1:1000;

s = 5 * sin(pi/200 * n);
v = randn(1,1001);

subplot(2,2,1)
sgtitle("Noise filter");
plot(s+v,'black');
hold on
plot(s,'red','LineWidth',1.5);
title("Plot of signal");

h1 = 1/5 * ones(1,5);
h2 = 1/21 * ones(1,21);
h3 = 1/51 * ones(1,51);

output = conv(h1,s+v,'full');

subplot(2,2,2)
plot(output,'black');
hold on
plot(s,'red','LineWidth',1.5);
title("M = 5");
% -----------------------------------------
output = conv(h2,s+v,'full');

subplot(2,2,3)
plot(output,'black');
hold on
plot(s,'red','LineWidth',1.5);
title("M = 21");

% -----------------------------------------
output = conv(h3,s+v,'full');

subplot(2,2,4)
plot(output,'black');
hold on
plot(s,'red','LineWidth',1.5);
title("M = 51");






