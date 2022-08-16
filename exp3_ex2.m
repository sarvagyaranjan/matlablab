clc;
clear all;
close all;

%plot A

a = [1 0.13 0.52 0.3];
b = [0.16 -0.48 0.48 -0.16];

N= 512;

[h1,w] = freqz(a ,b , N);

subplot(4,3,1);
plot(w, abs(h1));
title('magnitude response')

subplot(4,3,2);
plot(w,angle(h1));

%plot b 

c = [1 -0.268];
d = [0.634 0634];

[h2, w] = freqz(c,d,N);
subplot(4,3,3);
plot(w,abs(h2));

subplot(4,3,4);
plot(w, angle(h2));

% plot c


e = [1 0.268];
f = [0.634 0.634];
subplot(4,3,4);
[h3, w] = freqz(e,f,N);
plot(w, abs(h3));
subplot(4,3,5);
plot(w, angle(h3));

% plot d 
g = [10 -5 1];
h = [1 -5 10];
subplot(4,3,6);
[h4, w] = freqz(g,h,N);
subplot(4,3,7)
plot(w, abs(h4));
plot(w, angle(h4));



