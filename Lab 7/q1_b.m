f = 10;
t = 0:0.0002:1;
B = 4;
a = 1;
x = sin(2*pi*f*t);
Y = quadratic_quant(x,B,a);

error = zeros(length(Y),1);
for it = 1:length(Y)
    error(it) = abs(Y(it) - x(it));
end

subplot(3,1,1)
sgtitle("Quantization");
stem(t,x,'r');
title("Discrete signal");
xlabel("t");
ylabel("x(t)");

subplot(3,1,2)
stem(t,Y,'r');
title("quantized signal");
xlabel("t");
ylabel("Y(t)");

subplot(3,1,3)
stem(t,error,'black');
title("Error in quatization");
xlabel("t");
ylabel("Mag");

figure()
histogram(error,15);
title("Histogram (B = 4)");

B = 3;
Y = quadratic_quant(x,B,a);

error = zeros(length(Y),1);
for it = 1:length(Y)
    error(it) = abs(Y(it) - x(it));
end

figure()
histogram(error,15);
title("Histogram (B = 3)");



