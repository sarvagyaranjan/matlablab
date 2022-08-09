clc;
clear all;
close all;

n = 0:50;

u = [(n>=0)];
u1 = [(n-1)>=0];
u20 = [(n-20)>=0];
u10 = [(n-10)>=0];
u100 = [(n-100)>=0];
u11 = [(n-11)>=0];
u21 = [(n-21)>=0];
u101 = [(n-101)>=0];

x1 = 5.*(u - u20);
x11 = 5.*(u1 - u21);
subplot(5, 1, 1);
stem(x11);
title("First Output")

x22 = (u1 - u11) + (20-n).*(u11-u21);
subplot(5,1,2);
stem(x22);
title("Second Output")

x33 = sin(pi.*n/25).*(u - u100);
subplot(5,1,3);
stem(x33);
title("Third Output");
