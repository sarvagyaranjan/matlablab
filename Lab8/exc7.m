clc;
close all;
clear all;
a = imread('lena_gray.bmp','bmp');
subplot(221), imshow(a);
title('Given image');
a1 = dct2(a);
a2 = log(abs(a1));
a3 = mat2gray(a2);
subplot(222),imshow(a3);
title('DCT of the image');
a4 = triu(a1);% Taking only upper triangle of the DCT matrix
a5 = idct2(a4);
a6 = mat2gray(abs(a5));
subplot(223), imshow(a6);
title('Reconstructed image after compression');