function B = NonIdeal(A,w0_FS,G,a)
            
for k = -(length(A) - 1)/2 : 1 : (length(A) - 1)/2
    ind = k+1+((length(A) - 1)/2);
   B(ind) = A(ind)*(G/(a + abs(k*w0_FS))); 
end

end