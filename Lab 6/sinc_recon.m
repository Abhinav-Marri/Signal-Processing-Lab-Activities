function xr = sinc_recon(n,xn,Ts,t_fine)

xr = zeros(length(t_fine),1);
wc = pi;
for it = 1:length(t_fine)
    for k = 1:length(n)
        xr(it) = xr(it) + (Ts*xn(k)*sin(wc*(((it - 1)/1000) - (k - 1)*Ts)/Ts)/(wc*(((it - 1)/1000)-(k - 1)*Ts)));
    end
end

end