function B = myHPF(A,w0_FS,wc)

    for k = 1:length(A);
        if(abs((k-1-(length(A)-1)/2) * w0_FS) >= wc)
            B(k) = A(k);

        else
            B(k) = 0;
    end

end