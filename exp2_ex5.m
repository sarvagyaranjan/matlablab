clc;
clear all;
close all;

t = 0:10;
x = sin(2*pi*80*t);

y = awgn(x, 10);
plot(y);
