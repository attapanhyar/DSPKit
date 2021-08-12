clear all, close all, clc


N=64;
L=30;
dx = L/(N);
x = -L/2:dx:L/2-dx;
f = cos(x).*exp(-x.^2/25);  %Function
df = -(sin(x).*exp(-x.^2/25)+(2/25)*x.*f); %Derivative

for kappa =1:length(df)-1
    dfFD(kappa)=(f(kappa+1)-f(kappa))/dx;
end
dfFD(end+1) = dfFD(end);

%% Derivative using FFT

fhat = fft(f);
kappa = (2*pi/L)*[-N/2:N/2-1];
kappa = fftshift(kappa); % reorder FFT frequencies
dfhat = i*kappa.*fhat;
dfFFT = real(ifft(dfhat));

%% Graphing
plot(x,df,'k','LineWidth',4),hold on
plot(x,dfFD,'b--','LineWidth',3),hold on
plot(x,dfFFT,'c--','LineWidth',2)
l1 =legend('True Derivative','Finite Diff','FFT Derivative');
set(gca,'FontSize',8);
xlabel('Time');ylabel('Amplitude')
%set(l1,'FontSize',8);
%set(gca,'Position',[1500 200 1500 700])






