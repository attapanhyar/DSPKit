fs  =1000;
T=4;
t = 0:fs*T;
f=0.25;
A = 1;
N=8;
x =0.5*cos(2*pi*f*t/fs);
x8 = quanBits(x,3,A);
eq_x8 = x-x8;
figure; plot(x)
hold on; grid on
plot(x8);
q = 2/2^8;
hold on; grid on;
plot(x8*q,'Linewidth',3);
%ytick([-q/2 -q/4 0 q/4 q/2]);
%yticklabels({'-q/2','-q/4','0','q/4','q/2'});
