t_fine = -1:0.001:1;
x = 0;
for Ts = [0.5,0.2,0.1,0.05]
    x = x+1;
t_samples = -1:Ts:1;
xt = 1 - abs(t_samples);
n = 1:length(xt);
y = sinc_recon(n,xt,Ts,t_fine);

subplot(2,2,x);
sgtitle("Sampling non-band-limited signal")
plot(t_fine,y);
hold on
stem(t_samples,xt);
if(Ts == 0.5)
    title("Ts = 0.5");
elseif (Ts == 0.2)
         title("Ts = 0.2");
elseif (Ts == 0.1)
         title("Ts = 0.1");
elseif (Ts == 0.05)
         title("Ts = 0.05");
end
end