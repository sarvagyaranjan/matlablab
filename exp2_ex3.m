clc;
clear all;
close all;

n = 0:10;

u = [(n>=0)];
u10 = [(n-10)>=0];
u5 = [(n-5)>=0];
h = ((0.5).^n).*(u - u10);

x1 = ((0.8).^n).*(u-u5);
y1 = conv(x1, h);
subplot(5,1,1);

stem(y1);
title("convolution 1")


x2 = (n==0) + 3*((n-1)==0) + 4*((n-3)==0);
y2 = conv(x2, h);
subplot(5,1,2);

stem(y2);
title("convolution 2")
