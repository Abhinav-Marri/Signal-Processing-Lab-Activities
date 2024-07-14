%upsampling

M = 2;
y = zeros(25,1);


for it = 1:25 * M
    if(mod(it,M) == 0)
    y(it,1) = it/M;
    end
    if(mod(it,M) ~= 0)
        if(it < M + 1)
            y(it,1) = y(1,1);
        else 
        y(it,1) = y(it-mod(it,M),1);
        end

    end

end

figure()
stem(y);
title("Upsampled Signal with zero order hold");
xlabel("n");
ylabel("magnitude");

