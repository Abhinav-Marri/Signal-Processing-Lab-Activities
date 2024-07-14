function X = DT_Fourier(x, N0, w) 

L = length(x);
X = zeros(1,1);

for it = 1:L

    X = X + x(it) * exp(1i * w * (it-N0));

end

