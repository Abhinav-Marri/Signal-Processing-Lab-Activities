
theta = pi/3;
for r = 0:0.2:1;

a = [1,-2*r*cos(theta),r*r];
b = [1, -2*cos(theta),1];

figure()
freqz(b,a);
end