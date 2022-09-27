clc;
clear all;
close all;


I = imread('lena_gray.bmp','bmp');
figure
subplot(2,5,1) , imshow(I);
title('Original Image');

B = imresize(I, 2);
figure
 imshow(B);
title('Resized Image');


J = imnoise(I, 'salt & pepper' , 0.25);
figure
subplot(2,5,3),imshow(J);
title('salt and pepper noise');


%3x3
K = medfilt2(J, [3 3]);
subplot(2,5,4),imshow(K);
title('filtered output using 3x3 window');

% 5x5

K1 = medfilt2(J, [5 5]);
subplot(2,5,5),imshow(K1);
title('filtered output using 5x5 window');

%7x7

K2 = medfilt2(J, [7 7]);
subplot(2,5,6),imshow(K2);
title('filtered output using 7x7 window');
