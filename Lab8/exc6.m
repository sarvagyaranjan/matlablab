clc;
clear all;
close all;


I = imread('lena_gray.bmp', 'bmp');
subplot(2,2,1),imshow(I);
title('original image');



%adding salt and pepper
J = imnoise(I, 'salt & pepper' , 0.02);
subplot(2,2,2),imshow(J);
title('salt and pepper noise');

%filtering salt and pepper
K = medfilt2(J);
subplot(2,2,3),imshow(K);
title('filtered output');