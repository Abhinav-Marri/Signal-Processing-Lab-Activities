% sound commands are commented to avoid playing everytime we run the code.
x = load("handel");
%sound(x.y);
t = 0:73112;
f = 1024;
t = transpose(t);
x = x.y + sin(2*pi*f*t);
x2 = x;
% ---- filter a --------

%pause(10);
b = 1.7;
w = pi/4;

h = [b,-2 * b *cos(w), b];

y = filter(h,1,x);

%sound(y);
% --------- filter b --------

%pause(10);
w = pi/4;
r = 0.5;
b = (1-2*cos(pi/4)+r^2)/(1-2*cos(w)+1);
b1 = [b,-2*b*cos(w),b];
a1 = [1,-2*r*cos(w),r^2];

y2 = filter(b1,a1,x2);
%sound(y2);

figure()
subplot(2,2,1);
sgtitle("Filters input and output");
plot(x(1:100));
title("filter a input");
xlabel("n");
ylabel("Amplitude");

subplot(2,2,2);
plot(y(1:100));
title("filter a output");
xlabel("n");
ylabel("Amplitude");

subplot(2,2,3);
plot(x2(1:100));
title("filter b input");
xlabel("n");
ylabel("Amplitude");

subplot(2,2,4);
plot(y2(1:100));
title("filter b output");
xlabel("n");
ylabel("Amplitude");






