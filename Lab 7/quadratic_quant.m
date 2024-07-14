function Y = quadratic_quant(x,B,a)

Y = zeros(1,length(x));
arr = zeros((2^B) + 1,1);

arr(1) = -1;

for k = 2:length(arr)
    arr(k) = arr(k - 1) + (1/(2^(B - 1)));
end


for k = 1:length(arr)
    arr(k) = arr(k)^2;
    if(k <= 2^(B-1))
        arr(k) = arr(k)*-1*a;
    elseif(k > 2^(B-1) + 1)
        arr(k) = arr(k)*a;
    end
           
end


for it = 1:length(arr)-1
    if(it == 1)
    for k = 1:length(x)
    if (x(k) < arr(2))
        x(k) = (arr(2) + arr(1))/2;
    end
    end
    elseif(it == length(arr) - 1)  
        for k = 1:length(x)
    if (x(k) > arr(length(arr) - 1))
        x(k) = (arr(length(arr) - 1) + arr(length(arr)))/2;
    end
        end
    else
   for k = 1:length(x)
        if (x(k) > arr(it) && x(k) < arr(it + 1))
            x(k) = (arr(it) + arr(it + 1))/2;
        end
    end
    end

end

Y = x;
end