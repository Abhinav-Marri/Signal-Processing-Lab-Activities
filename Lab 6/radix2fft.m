function X = radix2fft(x)
    
l = length(x);
if(l == 1)
    X = x;
else 
    x_even = x(1:2:end);
    x_odd = x(2:2:end);
    x_even = radix2fft(x_even);
    x_odd = radix2fft(x_odd);
    express = exp(-2*1j*pi/l);
    k = (0:l/2 - 1);
    w = express .^k;
    x_odd = w.*x_odd;
    X = [x_even + x_odd,x_even-x_odd];

end

end