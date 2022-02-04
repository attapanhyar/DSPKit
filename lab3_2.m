clc;clear;close all;
fs = 30;
f = 1;
t = 0:1/fs:1;
n=0:1:fs;
bd = 3;
x = sin(2*pi*f*t);
y = sin(2*pi*f/fs*n);
N_sampels = length(y);
Xq_out = zeros(1, N_sampels);
Index = zeros(1, N_sampels);
X_max = round(max(x));
X_min = round(min(x));
del = (X_max-X_min)/(2^bd);
Vmax= X_max-del/2;
Vmin = X_min+del/2;
for i = Vmin:del:Vmax
    for j=1:N_sampels
    if(((i-del/2)<y(j))&& (y(j)<(i+del/2)))
        Xq_out(j) = i;
        Index(j) = round((y(j)-Vmin)/del);
    end
    end
end
subplot(311);
plot(t,x);
grid on;
subplot(312);
stem(n,y);
grid on
subplot(313);
stem(n,Xq_out);
grid on
disp(Index);