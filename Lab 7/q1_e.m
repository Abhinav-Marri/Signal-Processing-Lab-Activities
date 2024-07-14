f = 10;
t = 0:0.0002:1;
x = sin(2*pi*f*t);

Y = zeros(8,length(x));
error = zeros(8,length(x));
for B = 1:1:8
    X = quadratic_quant(x,B,1);
    for it = 1:length(x)
        Y(B,it) = X(it);
        error(B,it) = abs(Y(B,it) - x(it));
    end
    MAX = max(error,[],2);
end

figure()
stem(MAX);
title("Error Plot");
xlabel("B");
ylabel("Mag of error");

q1 = 0;
q2 = 0;
for B = 1:1:8
    q1 = 0;
    q2 = 0;
    for it = 1:length(x)
        q1 = q1+  abs(x(it))^2;
        q2 = q2+ abs(error(B,it))^2;
    end
    SQNR(B) = q1/q2;
end

figure()
stem(SQNR)
title("SQNR Plot");
xlabel("B");
ylabel("SQNR");
