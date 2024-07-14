%upsampling

M = 2;
y = ones(50,1);

for it = 1:49
    y(it+ 1) = y(it) + y(it+1);

end

% --------------linear interpolation ------------------------------
num = 1:1:50;
xq = 1:1/M:50;
out = interp1(num,y,xq);
figure()
stem(out);
title("Upsampled Signal with interpolation");
xlabel("n");
ylabel("magnitude");
