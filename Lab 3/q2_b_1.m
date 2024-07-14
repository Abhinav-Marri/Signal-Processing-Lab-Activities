
%upsampling

M = 3;
y = zeros(25,1);

load('q2_1.mat');

for it = 1:13 * M
    if(mod(it,M) == 0)
    y(it,1) = x(1,it/M);
    end
    if(mod(it,M) ~= 0)
        if(it < M + 1)

            y(it,1) = y(1,1);
        else 
        y(it,1) = y(it - 1,1);
        end

    end

end

figure()
stem(y);
title("Upsampled Signal with zero order hold");
xlabel("n");
ylabel("magnitude");


% --------------linear interpolation ------------------------------

num = 1:1:length(x);
xq = 1:1/M:length(x);
out = interp1(num,x,xq);
figure()
stem(out);
title("Upsampled Signal with interpolation");
xlabel("n");
ylabel("magnitude");
