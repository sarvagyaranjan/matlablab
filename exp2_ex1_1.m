clc;
clear all;
close all;

k = 0:15;
subplot(4,3,1);
plot((-1/2).^(k));
title("Plot A");

subplot(4,3,2);
plot(2.^k);
title("Plot B")

subplot(4,3,3);
plot(-2.^k);
title("Plot c")


t = linspace(0 ,10);


x = square(t, 25);
subplot(4,3,4);
plot(x);
title("25%duty Cycle plot");

y = square(t, 50);
subplot(4,3,5);
plot(y);
title(" 50% duty cycle");

z = square(t, 75);
subplot(4,3,6);
plot(z);
title("75%duty cycle");

fs = 1000;
f = 500;
t = 0:1/fs:(1/f);
a = sawtooth(2*pi*f*t);
subplot(4,3,7);
plot(t,a);


t = 0:0.01:1;
s1 = sin(2*pi*10*t);
s2 = sin(2*pi*30*t);
s3 = sin(2*pi*60*t);

s4 = s1 + s2 + s3;
subplot(4,3,8);
plot(s4);






