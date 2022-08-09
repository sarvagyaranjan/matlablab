clc; close all; clear all; N = 20;
b = [5 0 0];
a = [1 -0.6 -0.16];
f = [1, zeros(1,N-1)]; % generation of unit impulse ?[n]
h = filter(b, a, f); % input to the system is ?[n]; output is impulse response h[n]
n = 0: 1: N-1;
stem(n, h);
title('Unit Impulse Response, h[n]'), xlabel('n'), ylabel('Amplitude');