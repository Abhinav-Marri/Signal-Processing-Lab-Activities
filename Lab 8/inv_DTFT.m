function x = inv_DTFT(X,wc)
syms w;

x = zeros(1,100);
for it = 1:101
fun = X * exp(1i * w * (it - 51));
x(1,it) = 1/2 * 1/pi * int(fun,w,-wc,wc);

end


end 