clc;
clear all;
close all;


I = imread('lena_gray.bmp', 'bmp');
subplot(2,5,1), imshow(I);
title('Original Image');

dft_I = fft2(I);
subplot(2,5,2),imshow(dft_I);
title('Fourier Transform of Image');


rotate = imrotate(I, 45);
subplot(2,5,3), imshow(rotate);
title('Rotated Image');

dft_rotated = fft2(rotate);
subplot(2,5,4), imshow(dft_rotated);
title('rotated image of fft');
