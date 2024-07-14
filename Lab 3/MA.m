function [y,x] = MA(x,N);  %code for q1_a.m

l = length(x);
y = zeros(l, 1);

for it = 1:l - 1
    x(it + 1,1) = x(it,1) + x(it+1,1);   %finding prefix sums

end

for it2 = 1:l                  % calculating moving avg
    if(it2 < N + 1)
        y(it2,1) = x(it2,1)/N;
    else
    y(it2,1) = x(it2,1) - x(it2-N,1);
    y(it2,1) = y(it2,1)/N;
    end

end

end