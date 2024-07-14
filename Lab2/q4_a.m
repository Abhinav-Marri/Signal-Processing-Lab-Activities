a = [1,-0.5,0.2,-0.1,0.007,0.14,0.15];
b = 1;
n = 1001;
[h,t] = freqz(b,a,n,'whole');

figure();
plot(t, abs(h),"r");
title("Magnitude Response");
xlabel("freq");
ylabel("magnitude");
