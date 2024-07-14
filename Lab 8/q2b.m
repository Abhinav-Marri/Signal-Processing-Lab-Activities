
b = 1.7;
w = pi/4;
r = 0.5;
b = (1-2*cos(pi/4)+r^2)/(1-2*cos(w)+1);
b1 = [b,-2*b*cos(w),b];
a1 = [1,-2*r*cos(w),r^2];

freqz(b1,a1,2001);
title("r0 = 0.5");
