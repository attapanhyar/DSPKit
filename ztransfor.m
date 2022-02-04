%% Z transform for finite sequence

x = [1 2 5 4];
b = 0;
n = length(x);
y = sym('z');
for i=1:n
    b = b+x(i)*y^(1-i);
end
display(b);


%% Z-Transform of a Infinite Sequence
close all;
clear all;
clc;
syms z n;
xn = (1/2)^n;
disp('x[n]=')
pretty(xn);
Xz = ztrans(xn);
disp('X[z]=')
pretty(Xz);




%% Z transform of Rational Function
p = [1 2 3];
q = [1 9 4];
zplane(p,q)

%% Inverse Z transform
clear all;
close all;
clc;

syms z;
Xz = z/(z-1)^2;
pretty(Xz)
xn = iztrans(Xz);
pretty(xn)

%% Finding Inverse Z transform using Partial Fraction
%steps: first convert z^-1 domain..
%step2: treat each multiplication term as separate pole or zero
%Step3: Convole all poles.... and convolve all zeroes
%Step 4: Compute residue [r,p,k] = residue(b,a)..
% r = residue
% p = poles
% k = gain

%Example 01

b= [1 2]; a = conv([1 -0.2],[1 0.6]);
[r,p,k] = residue(b,a)
%Example 02
b= [1 0]; a = conv([1 -1],[1 -0.5]);
[r,p,k] = residue(b,a)
% Example 03
b= [1 1]; a= [1 -1 0.5];
[r,p,k]= residue(b,a);
zplane(b,a)
% Example 3
b= [1 0 0 0]; a = conv([1 1],[1 -2 1]);
[r,p,k]= residue(b,a);
zplane(b,a)