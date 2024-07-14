function [N,ROC,C,S] = roc_cs(p); %p is a matrix of poles of the system. 
Length = length(p);

ROC = zeros(Length,2);
C = zeros(Length,1);
S = zeros(Length,1);

if (p(1) ~= 0)
    N = Length + 1;
    if (N == 1)
        ROC(1,1) = p(1);
        ROC(1,2) = inf;
    end
    ROC(1,1) = 0;
    ROC(1,2) = p(1);
    if(p(1) > 1)
        S(1,1) = 1;
    else
        S(1,1) = 0;
    end
    for it = 2:N-1
        ROC(it,1) = p(it -1);
        ROC(it,2) = p(it);
        if(ROC(it,1) < 1 && ROC(it,2) > 1)
            S(it,1) = 1;
        else
            S(it,1) = 0;
        end
    end
    ROC(N,1) = p(N - 1);
    ROC(N,2) = inf;
    if(p(N-1) < 1)
        S(N,1) = 1;
    else
        S(N,1) = 0;
    end
    C(N,1) = 1;
    
    disp("N = " + N);
    disp("ROC = ");
    disp(ROC);
    disp("C = ");
    disp(C);
    disp("S = ");
    disp(S);

else
    N = Length;
    if (N == 1)
        ROC(1,1) = p(1);
        ROC(1,2) = inf;
        C(1,1) = 1;
        S(1,1) = 1;
    end
    if(N > 1)
        ROC(1,1) = p(1);
        ROC(1,2) = p(2);
        for it = 2:N-1
        ROC(it,1) = p(it);
        ROC(it,2) = p(it + 1);
        if(ROC(it,1) < 1)
            S(it,1) = 1;
        else
            S(it,1) = 0;
        end
        end
        ROC(N,1) = p(N);
        if(p(N) < 1)
            S(N,1) = 1;
        else
            S(N,1) = 0;
        end
        ROC(N,2) = inf;
        C(N,1) = 1;
    end

    disp("N = " + N);
    disp("ROC = ");
    disp(ROC);
    disp("C = ");
    disp(C);
    disp("S = ");
    disp(S);

end

