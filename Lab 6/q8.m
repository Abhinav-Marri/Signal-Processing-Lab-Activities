t_fine = 0:0.001:2;
x = 0;
for Ts = [0.1,0.2,0.3,0.4]
    x = x+1;
t_samples = 0:Ts:2;
xt = cos(5*pi*t_samples);
n = 1:length(xt);
y = sinc_recon(n,xt,Ts,t_fine);

subplot(2,2,x);
sgtitle("Observing Aliasing")
plot(t_fine,y);
hold on
stem(t_samples,xt);
if(Ts == 0.1)
    title("Ts = 0.1");
elseif (Ts == 0.2)
         title("Ts = 0.2");
elseif (Ts == 0.3)
         title("Ts = 0.3");
elseif (Ts == 0.4)
         title("Ts = 0.4");
end
end