clc;
clear all
close all;
n = -10:10;

u = [(n>=0)];
u3 = [(n-3)>=0];

x1 = u-u3; %rectangular window
subplot(5,2,1);
title("x[n] = u[n]-u[n-3]");
plot(n,x1);
z = angle(x1);




x2 = sin(n.*pi/3).*u;
subplot(5,2,2);
title("sin(n*pi/3)*u");
plot(n,x2)
z2 = angle(x2);


x3 = (0.5.^n).*exp(1i*pi.*n/2);
subplot(5,2,3);
plot(n,x3);
z3 = angle(x3);



