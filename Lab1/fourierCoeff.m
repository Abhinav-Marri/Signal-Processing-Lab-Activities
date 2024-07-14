
function [F] = fourierCoeff(t, xt, T, t1, t2, N)

F = zeros(1,2*N+1); 
w0 = (2 * pi) / T;
syms t;
for k = -N:N
    F(1,1+k+N) = 1/T * int(xt * exp(-1i*k*w0*t), t, t1, t2); 
end

