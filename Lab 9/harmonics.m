function xn = harmonics(A,f0,P,td,fs)
    
F = 1:1:length(A);
F = F .*f0;
xn =  SineSum(A,F,P,td,fs);


end