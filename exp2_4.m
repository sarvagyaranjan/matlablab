 clc; close all; clear all;
x = [3,11,7,0,-1,4,2]; % Given sequence x[n]

nx = -3:3;
ny = nx + 2; % Shifted x[n] ; delay of 2 units
y1 = x;
w = randn(1, length(y1)); % Random sequence generation
y = y1 + w;
nyb = ny(1)+nx(1); % Starting point 
nye = ny(length(y1))+nx(length(x)); % Ending point 
ny = nyb:nye;
xcr = xcorr(x,y); % cross-correlation
stem(ny,xcr);
title('Cross-correlation example'); xlabel('Time, n');