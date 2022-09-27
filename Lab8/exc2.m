clc;
close all;
clear all;

I = imread('barbara_gray.bmp', 'bmp');


subplot(2,2,1);
imshow(I);


subplot(2,2,2);

imhist(I); %low contrast image histogram


J = histeq(I);

subplot(2,2,3)
imshow(J);

subplot(2,2,4);

imhist(J); %gives the histogram of the increased contrast image