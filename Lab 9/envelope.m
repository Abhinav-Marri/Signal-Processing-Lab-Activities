function [t_env, env] = envelope(a, d, s, sd, r, fs)
    
    t_attack = 0:1/fs:a;
    t_decay = a+1/fs:1/fs:a+d;
    t_sustain = a+d+1/fs:1/fs:a+d+sd;
    t_release = a+d+sd+1/fs:1/fs:a+d+sd+r;

    t_env = [t_attack, t_decay, t_sustain, t_release];
    
    slope_A = 1/a;
    slope_D = (s-1)/d;
    slope_R = -s/r;

    for k = 1:length(t_attack)
       
        env_A(k) = slope_A*t_attack(k);

    end

    for k = 1:length(t_decay)

        env_D(k) = slope_D*t_decay(k) + s - slope_D*t_decay(length(t_decay));

    end

     for k = 1:length(t_sustain)

        env_S(k) = s;

     end

     for k = 1:length(t_release)

        env_R(k) = slope_R*t_release(k) - t_env(length(t_env))*slope_R;

     end

     env = [env_A, env_D, env_S, env_R];
        
end