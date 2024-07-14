fs = 10000;

N = 15;
k = 1:1:N;

for it = 1:N
    A(it) = 1/k(it);
end

P = zeros(N);
f0 = 200;
td = 1;
n = 0:1/fs:td;

xn = harmonics(A,f0,P,td,fs);

a = 0.2;
d = 0.2;
s = 0.7;
sd = 0.4;
r = 0.2;

[t_env, env] = envelope(a, d, s, sd, r,fs);

figure()
subplot(3, 1, 1)
plot(xn)
title("Note without Envelope")
ylabel("x[n]")
xlabel("n")

subplot(3, 1, 2)
plot(env)
title("ADSR Envelope")
ylabel("env")
xlabel("t")

subplot(3, 1, 3)
plot(xn.*env)
title("Note with Envelope")
ylabel("x[n]*env")
xlabel("n")
