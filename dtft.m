function [X Xamp]=dtft(x,t,f)
T=abs(t(1)-t(2));
X=T*x*(exp(-j*2*pi*t'*f));
Xamp=abs(X);
Xamp=Xamp/max(Xamp);
figure,    plot(f,Xamp,'r','LineWidth',2)
 axis([min(f) max(f) min(Xamp)-0.2 max(Xamp)+0.5])
grid on;
xlabel('Frequency')
ylabel('Amplitude')
title('Normalized Amplitude Density Spectrum')
