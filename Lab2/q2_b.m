
p = 0.8;
a = [1,p];
b = 1;
n = 1001;
[h,t] = freqz(b,a,n,'whole');

figure();
plot(t, abs(h),"r");
title("Magnitude Response");
xlabel("time");
ylabel("magnitude");



