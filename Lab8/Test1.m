clc;
close all;
clear all;
% a) 
a = imread('barbara_gray.bmp','bmp');
subplot(221),imshow(a), title('a) Image');
% b)
b = double(a);
b = 256-b;
b =uint8(b);
subplot(222), imshow(b), title('b) Negative of the image');
% c)
% c = a';
% subplot(223), imshow(c), title('c) Image rotated anti-clockwise');