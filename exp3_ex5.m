clc;
clear all;
close all;

g = [1 -3 4 2 0 -2];
h = [3 0 1 -1 2 1];

lin_c = conv(g, h);
circ_c = conv(g, h,11);

g1 = [g zeros(1, 11 - length(g))];
h1 = [h zeros(1, 11- length(h))];

lin_c_upd =  ifft(fft(g1) .*fft(h1));

subplot(311) ;
stem(lin_c);
title("Linear Convolution")

subplot(313), stem(lin_c_upd);
title("Linear convoltuion using circular convolution");
