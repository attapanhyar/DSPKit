%% LAB 01 -- Solution

t = -1:0.01:1;
impulse = t==0;
unitstep = t>0;
ramp = t.*unitstep;
quad = t.^2.*unitstep;
plot(t,2*impulse,t,2*unitstep,t,2*ramp,t,quad)


%% Generating a Square Wave

sqwave = 0.81*square(4*pi*t);
plot(t,sqwave)

%% LAB TASK 02
%a u[n-5];
n = 0:1:20;

u5 = n>=5;
%subplot(5,1,1)
stem(n,u5)
ylim([-2 2])

% b)  x[n] =  u[n] – u[n-10]
u = n>0;
u10 = n>=10;
x = u-u10;
%subplot(5,1,2)
stem(n,x)
xlim([-20 20]);

% c)  x[n] =  2u[n] – r[n-2] + 4δ[n-4]
n=-10:1:10;
u = n>=0;

r = (n-2).*(n>=2);
imp = n==4;
simp = 4*imp;
x = 2*u-r+simp
%subplot(5,1,3)
stem(n,x)
ylim([-10 10]);


% d)  x[n] =  u[n-2] + 2r[n-4] - 4r[n-6] + 4r[n-8] - u[n-10]

n = 0:1:20;
u2 = n>=2;
u4 = n>=4;
r4 = 2*(n-4).*u4;
u6 = n>=6;
r6 = 4*(n-6).*u6;
u8 = n>=8;
r8 = 4*(n-8).*u8;
u10 = n>=10;
%x[n] =  u[n-2] + 2r[n-4] - 4r[n-6] + 4r[n-8] - u[n-10]
x = u2+r4-r6+r8-u10;
%subplot(5,1,4)
stem(n,x)

% Lab Task 3: Find the impulse and step responses of the following discrete-time systems
% a)   y[n]  =  x[n]  -  0.75y[n-1] 
n = 0:1:20;
a = [1 0.75];
b = [1 0];
imp = n ==0;
res = filter(b,a,imp)
figure;
stem(n,res);
% b)  y[n]  = x[n] + 0.5x[n-1] + 0.75y[n-1] – 0.5y[n-2]
n = -2:10;

a = [1 -0.75 0.5];
b = [1 0.5 0];
imp = n ==0;
res = filter(b,a,imp);
stem(n,res);

