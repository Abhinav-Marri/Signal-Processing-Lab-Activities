syms z;
syms t;
syms r;

f = (z^2 - 2*cos(t)*z + 1)/(z^2 - 2*r*z*cos(t)+(r)^2);

y = iztrans(f);

disp(y);
