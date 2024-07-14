function y = partialfouriersum(ak, T, time_grid, N)

y = zeros(1,length(time_grid));
w0 = 2 * pi / T;

for k = -N:N
    y = y + ak(k+N+1) * exp(1i*k*w0*time_grid);

end

end