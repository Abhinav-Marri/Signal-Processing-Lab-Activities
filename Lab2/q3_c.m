
r = 0.95;
for theta = 0:pi/4:pi;

a = [1,-2*r*cos(theta),r*r];
b = [1, -2*cos(theta),1];

figure()
freqz(b,a);
end