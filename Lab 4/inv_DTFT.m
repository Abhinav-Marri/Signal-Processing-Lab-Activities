function x = inv_DTFT(X,wc)
syms w;

x = zeros(1,201);
for it = 1:201
fun = X * exp(1i * w * (it - 101));
x(1,it) = 1/2 * 1/pi * int(fun,w,-wc,wc);

end


end 