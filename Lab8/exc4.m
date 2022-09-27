clc;
close all;
clear all;

 I = imread('lena_gray.bmp', 'bmp');
 
% image fourier

dft1 = fft2(I);
a = fftshift(dft1);
subplot(2,2,1) , imshow(a, []);

 