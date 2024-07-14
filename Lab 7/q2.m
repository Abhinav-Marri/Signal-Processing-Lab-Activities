[X,fs] = audioread('WAV_1.wav');
B = 3;
a = 1;
Y = quadratic_quant(X,B,a);

sound(X,fs);
pause(35);
sound(Y,fs);
pause(35);

final = zeros(8,length(x));
for B = 1:8
    Y = quadratic_quant(x,B,a);
    for it = 1:length(x)
           final(B,it) = Y(it);
    end
end

for B = 1:1:8
    sound(X(B),fs);
    pause(35);
end