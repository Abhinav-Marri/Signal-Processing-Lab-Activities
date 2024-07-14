
x = ones(50,1);
N = 5;
[y,x] = MA(x,N);
figure()
stem(y);
tite("Moving Average");
disp(y);

% y will be the output of the Moving average Function.
