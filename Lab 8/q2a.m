b = 1.7;
w = pi/4;

h = [b,-2 * b *cos(w), b];

freqz(h,1,2001);
