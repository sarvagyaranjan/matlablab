clc;
close all;
clear all;

n = 0:10;

x = (0.9.*exp(1i.*n.*pi/3));
X = fft(x);
subplot(1,2,1);

stem(abs(X));
title("Input")

subplot(1,2,2);
stem(x);
title("Output")