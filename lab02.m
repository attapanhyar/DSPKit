close all;
clear all; 
clc;
f = 8;    		% frequency of the CT signal
Fs = 2*f; 		% sampling frequency
T = 1/Fs; 		% sample spacing
nT = 0:T:5; 	            % time vector
x = sin(2*pi*f*nT);
frange = -10:0.01:10;
dtft(x,nT,frange)          % user defined function
figure
hold on 
stem(nT,x,'c','LineWidth',2)
hold off
xlabel('Time')
ylabel('Amplitude')

%% lab task 01
% 1.1 Fs<2fmax
close all;
clear all; 
clc;
f = 1;    		% %frequency of the CT signal
Fs = 1.5*f; 		% sampling frequency
T = 1/Fs; 		% sample spacing
nT = 0:T:5; 	            % time vector
x = sin(2*pi*f*nT);
frange = -10:0.01:10;
dtft(x,nT,frange)          % user defined function
figure
hold on 
stem(nT,x,'c','LineWidth',2)
hold off
xlabel('Time')
ylabel('Amplitude')

%1.2 Fs >2fmax
% 1.1 Fs<2fmax
close all;
clear all; 
clc;
f = 1;    		% %frequency of the CT signal
Fs = 4*f; 		% sampling frequency
T = 1/Fs; 		% sample spacing
nT = 0:T:5; 	            % time vector
x = sin(2*pi*f*nT);
frange = -10:0.01:10;
dtft(x,nT,frange)          % user defined function
figure
hold on 
stem(nT,x,'c','LineWidth',2)
hold off
xlabel('Time')
ylabel('Amplitude')

%% LAB TASK 02
% nT = 0:T:50;
close all;
clear all; 
clc;
f = 1;    		% %frequency of the CT signal
Fs = 4*f; 		% sampling frequency
T = 1/Fs; 		% sample spacing
nT = 0:T:50; 	            % time vector
x = sin(2*pi*f*nT);
frange = -10:0.01:10;
dtft(x,nT,frange)          % user defined function
figure
hold on 
stem(nT,x,'c','LineWidth',2)
hold off
xlabel('Time')
ylabel('Amplitude')

%% LAB TASK 03
% x[n]=cos(2πft)        f=2,20,30 Hz
close all;
clear all; 
clc;
    f = 30;    		% %frequency of the CT signal
    Fs = 2*f; 		% sampling frequency
    T = 1/Fs; 		% sample spacing
    nT = 0:T:5; 	            % time vector
    x = cos(2*pi*f*nT);
    frange = -100:0.01:100;
    dtft(x,nT,frange)          % user defined function
%     subplot(length(f),1,i)
%     stem(nT,x,'c','LineWidth',2)
%     hold off
%     xlabel('Time')
%     ylabel('Amplitude')

%% Lab Task 4: Generate the following composite signal in MATLAB.
%Plot it in time-domain and show its spectral contents in frequency domain.
%y[n]=cos(2πf_1 t)+2sin(2πf_2 t)+3cos(2πf_3 t)
 %     f_1=4,f_2=20,f_3=35 Hz
close all;
clear all; 
clc;
    f_1=4;
    f_2=20;
    f_3=35;   		% %frequency of the CT signal
    Fs = 2*f_3; 	% sampling frequency
    T = 1/Fs; 		% sample spacing
    nT = 0:T:50; 	            % time vector
    x = cos(2*pi*f_1*nT+2*sin(2*pi*f_2*nT)+3*cos(2*pi*f_3*nT));
    frange = -100:0.01:100;
    dtft(x,nT,frange)          % user defined function
    figure
    hold on 
    stem(nT,x,'c','LineWidth',2)
    hold off
    xlabel('Time')
    ylabel('Amplitude')


 