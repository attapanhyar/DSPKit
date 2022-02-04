%% Impulse response signal
a=0.5;
nh=11;
n=[0:nh-1];
h=a.^n;
%% input signal
nx=3;
x=ones(1,nx);

%% Output Response
y=conv(x,h);
figure
set (gca,'FontSize',14)
stem([0:nx-1],x)
xlabel('n')
ylabel('x(n)')
axis([0 nx-1 0 1.5])
grid on
figure
set (gca,'FontSize',14)
stem([0:nh-1],h)
xlabel('n')
ylabel('h(n)')
axis([0 nh-1 0 1.5])
grid on
figure
set (gca,'FontSize',14)
stem([0:nx+nh-2],y)
xlabel('n')
ylabel('y(n)')
axis([0 nx+nh-2 0 2])
grid on;