N=10;
N1=2*N;
x=[ones(1,N) zeros(1,N1-N)];
n=[0:N1-1];
y=fft(x,length(x));
figure
set (gca,'FontSize',14)
stem(n,x)
xlabel('n')
ylabel('x(n)')
axis([0 N1-1 -0.5 1.5])
grid on
figure
set (gca,'FontSize',14)
stem(n,abs(y),'o')
xlabel('k')
ylabel('|X_z(k)|')
axis([0 N1-1 -1 11])
grid on

%% 
N=10;
N1=1000;
x=[ones(1,N) zeros(1,N1-N)];
n=[0:N1-1];
y=fft(x,length(x));
f=n/N1;
figure
set (gca,'FontSize',14)
plot(f,abs(y))
xlabel('f')
ylabel('|X(e^{j2\pi f})|')
axis([0 1 -1 11])
grid on

%% 
N=10;
N1=1000;
x=[ones(1,N) zeros(1,N1-N)];
n=[0:N1-1];
y=fftshift(fft(x,length(x)));
f=(n-N1/2)/N1;
figure
set (gca,'FontSize',14)
plot(f,abs(y))
xlabel('f')
ylabel('|X(e^{j2\pi f})|')
axis([-0.5 0.5 -1 11])
grid on

%% 
a=0.8;
N=10;
n=[0:N-1];
x=a.^n;
y=fft(x,length(x));
figure
set (gca,'FontSize',14)
stem(n,x)
xlabel('n')
ylabel('x(n)')
axis([0 N-1 -0.5 1.5])
grid on
figure
set (gca,'FontSize',14)
stem(n,abs(y))
xlabel('k')
ylabel('|X(k)|')
axis([0 N-1 -1 5])
grid on
f=linspace(0,1,1000);
X=1./(1-a*exp(-j*2*pi*f));
hold on
plot(f*N,abs(X),'r--')


