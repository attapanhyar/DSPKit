clear all,close all, clc
A = imread('C:\Users\Atta\Downloads\IMG-20210809-WA0038.jpg');
B = rgb2gray(A);
figure
imagesc(A)

%% FFT
figure;
Bt=fft2(B);
Flow = log(abs(fftshift(Bt))+1);
imshow(mat2gray(Flow),[]);

%% FFT Zero Out small coefficients
Btsort = (abs(Bt(:)));
counter=1;
figure;
for keep =[.99 .05  .01 .002]
    subplot(2,2,counter)
    thresh=Btsort(floor((1-keep)*length(Btsort)));
    ind = abs(Bt)>thresh; % Find Small indices
    Atlow = Bt.*ind;        % Thresh hold indices
    Alow = uint8(ifft2(Atlow)); % Compressed Image
    imshow(Alow);
    title(['',num2str(keep*100),'%'], 'FontSize',8)
    counter = counter+1;
end

% surf(Alow(10:10:end,10:10:end)) % Demonstrate Surf features




