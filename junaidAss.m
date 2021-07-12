close all;
clear all; 
clc;
f1=0.05,f2=0.125,f3 = 0.2;    		% frequency of the CT signal
Fs = 2*f3; 		% sampling frequency
T = 1/Fs; 		% sample spacing
nT = -20:T:20; 	            % time vector
x = cos(2*pi*f1*nT)+cos(2*pi*f2*nT)+cos(2*pi*f3*nT);
frange = -10:0.01:10;
dtft(x,nT,frange)          % user defined function
figure
hold on 
stem(nT,x,'c','LineWidth',2)
hold off
xlabel('Time')
ylabel('Amplitude')
