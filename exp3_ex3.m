clc;
clear all;
close all;

n = 0:100;
N = 512;


u = [(n>=0)];

rand_noise = rand(1,length(n));

x = 0.9.^n.*u;

a = [1 0 0];
b = [1/3 1/3 1/3];


[h, w] = freqz(a, b , N , 'whole');

subplot(1,2,1);
plot(w, abs(h));
title("Magnitude Response");

subplot(1,2,2);
plot(w, angle(h));
title("Phase rESPONSE");