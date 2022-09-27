clc;
clear all;
close all;


I = imread('barbara_gray.bmp', 'bmp');

subplot(1,2,1);

title('original picture')
imshow(I);

BW1 = edge(I, 'sobel', 'horizontal');
%BW2 = edge(I, 'canny');

subplot(1,2,2);
title('Sobel Filter')

imshow(BW1);

