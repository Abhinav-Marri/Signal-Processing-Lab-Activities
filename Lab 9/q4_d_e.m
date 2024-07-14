N = 25;
fs = 10000;

k = 1:1:N;

for it = 1:N
    A(it) = 1/(k(it)^2);
end

P = zeros(N,1);

F_notes = [392, 392, 440, 392, 523, 494,392, 392, 440, 392, 523, 494,392, 392, 784, 659, 523, 494, 440 ,349, 349, 330, 262, 294, 262];
td_notes = ones(1,N).*0.33;
td_notes(3) = 0.67;
td_notes(4) = 0.67;
td_notes(5) = 0.67;
td_notes(6) = 1.2;
td_notes(9) = 0.67;
td_notes(10) = 0.67;
td_notes(11) = 0.67;
td_notes(12) = 1.2;
td_notes(15) = 0.67;
td_notes(16) = 0.67;
td_notes(17) = 0.67;
td_notes(18) = 1.2;
td_notes(19) = 0.67;
td_notes(23) = 0.67;
td_notes(24) = 0.67;
td_notes(25) = 1.2;
asdr = [0.2,0.2,0.7,0.4,0.2];

yn = my_synthesizer(A,F_notes,P,asdr,td_notes,fs);

figure()
plot(yn);

soundsc(yn);

audiowrite("happy_brithday.wav",yn,fs);