function yn  = my_synthesizer(A,F_notes,P,adsr,td_notes,fs)

    yn = [];
    adsr1 = adsr;

    for it = 1:length(F_notes)
       adsr = adsr1 .* td_notes(it);


    [t_env,env] = envelope(adsr(1),adsr(2),adsr(3),adsr(4),adsr(5),fs);


    xt = harmonics(A,F_notes(it),P,td_notes(it),fs);
      
    xte = xt.*env;

    yn = [yn,xte];
    

   end



end