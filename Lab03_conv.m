%% LAB 04: CONVOLUTION AND CORRELATION
 


%% Convolution
%%
% |Formula to compute Convolution| 
% $$y[n]=\sum_{k=-\infty}^{\infty}x[k]h[n-k]$$
% 

xh = [1,2,3,1], nx = [0:3]
stem(nx,xh);
hh = [1,2,1,-1], nh = [-1:2]
stem(nh,hh,'linewidth',3);
nyb = nx(1)+nh(1)
nye= nx(length(xh))+nh(length(hh))
ny = [nyb:nye]
y = conv(xh,hh) %CONV to compute the convolutionsum
%calc_conv(xh,hh,nyb,nye)
stem(ny,y,'linewidth',3)

%% Correlation

% Formula to compute Correlation is
%%
% 
% $$y[l]=\sum_{k=-\infty}^{\infty}x[k]h[k-l]$$
% 

n = 0:15;
x = 0.84.^n;
y = circshift(x,5);
[c,lags] = xcorr(x,y,'normalized');
stem(lags,c,'linewidth',3)


