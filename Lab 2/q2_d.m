p = 0.1;
a = [1,p];
b = 1;
n = 1001;
figure();
zplane(b,a);

[h,t] = freqz(b,a,n,'whole');

figure();
plot(t, abs(h),"r");
title("Magnitude Response");
xlabel("time");
ylabel("magnitude");

figure();
impz(b,a);
