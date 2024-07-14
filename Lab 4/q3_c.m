
syms w;
w2 = pi/4;
w1 = pi/8;

x = zeros(1,201);
X = 1;
for it = 1:201
fun = X * exp(1i * w * (it - 101));
x(1,it) = 1/2 * 1/pi * int(fun,w,-w2,-w1) + 1/2 * 1/pi * int(fun,w,w1,w2);
end

t = -100:100;
figure()
subplot(2,1,1)
sgtitle("w1 = pi/16 and w2 = pi/8");
plot(t,real(x));
title("Real Part of x[n]");
xlabel("n");
ylabel("Magnitude");

subplot(2,1,2)
plot(t,imag(x));
title("imaginary Part of x[n]");
xlabel("n");
ylabel("Magnitude");
