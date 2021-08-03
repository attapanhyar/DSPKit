%% Discrete Time Signal

n=[-10:10];
y=zeros(1,21);
y(11:21)=1;
figure
set(gca,'FontSize',14)
stem(n,y,'k')
xlabel('n')
title('u(n)')
axis([-10 10 -0.5 1.5])
grid on
 
%% Impulse

n=[-10:10];
y=zeros(1,21);
y(11)=1;
figure
set(gca,'FontSize',14)
stem(n,y,'k')
xlabel('n')
title('\delta(n)')
axis([-10 10 -0.5 1.5])
grid on

%% Sinc Function
n=[-10:10];
y=sinc(n/3);
figure
set(gca,'FontSize',14)
stem(n,y,'k')
xlabel('n')
title('sinc(n/3)')
axis([-10 10 -0.5 1.5])
grid on

%% triangular function
N=10;
n=[-N:N];
y=1-abs(n)/N;
figure
set(gca,'FontSize',14)
stem(n,y,'k')
xlabel('n')
title('t_{21}(n)')
axis([-10 10 -0.5 1.5])
grid on

%% Down Sampler

n=[0:20];
x=sin(2*pi*n/40);
D=2;
x_new = downsample(x,D);
n_new=[0:length(x_new)-1];

%% Up Sampler
n=[0:20];
x=sin(2*pi*n/40);
I=2;
x_new = upsample(x,I);
n_new=[0:length(x_new)-1];

%% Convolution of two Sequences

x=ones(1,5);
y=ones(1,3);
z=conv(x,y);
figure
set(gca,'FontSize',14)
stem(z,'k')
xlabel('n')
title('x(n)*y(n)')
axis([0 8 -0.5 3.5])
grid on
