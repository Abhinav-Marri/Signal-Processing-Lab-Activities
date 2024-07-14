
p = [0,0.5];

for it = 1:length(p)
p(it) = abs(p(it));
end

p = unique(p);
p = sort(p);

%disp(p);

[N,ROC,C,S] = roc_cs(p);