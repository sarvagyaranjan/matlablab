clc;
clear all;
close all;


I = imread('lena_gray.bmp', 'bmp');

c = 255.*rand(100,1);
r = 255.*rand(100,1);

BW  = roipoly(I, c, r);
figure
imshow(I);
figure
imshow(BW);