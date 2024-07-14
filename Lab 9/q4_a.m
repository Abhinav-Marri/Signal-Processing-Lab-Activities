N = 5;
fs = 10000;

k = 1:1:N;

for it = 1:N
    A(it) = 1/(k(it)^2);
end

P = zeros(N);

F_notes = 50:5:100;
td_notes = ones(N);

asdr = [0.2,0.2,0.7,0.4,0.2];

yn = my_synthesizer(A,F_notes,P,asdr,td_notes,fs);

x = 1:1/fs:(length(yn)/fs)+1-1/fs;

figure()
plot(x,yn);
title("synthesized signal y[n]");
xlabel("time");
ylabel("amplitude");
soundsc(yn);