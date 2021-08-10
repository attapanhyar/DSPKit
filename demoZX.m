syms z n
xn = (1/2)^n
disp('x[n]=');
pretty(xn);
disp('X[z]=');
xz = ztrans(xn);
pretty(xz);

%% for poles and zeros
p = [1 0];
q = [1 -1/2];
zplane(p,q);