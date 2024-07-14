
load('q1.mat');

N = 101;
[y,x] = MA(x,N);
figure()
stem(y);
tite("Moving Average");
disp(y);