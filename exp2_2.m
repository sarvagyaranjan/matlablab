clc;
clear all; close all;
Fs = 1000; % sampling frequency
f = 200; % signal frequency
t = 0:1/Fs:(1/f); % generation of the time sequence at sampling
% frequency fs for 1 period duration.
x = 5*sin(2*pi*f*t); %sine wave of freq. Of f hz and amplitude 5; sampled at fs
subplot(3,1,1); stem(t,x);
title('Sine wave sampled at 1000 Hz 1 period duration'); ylabel('Amplitude')
Fs1 =10000; % Different sampling frequency f = 200;
t = 0:1/Fs1:(1/f);
x = 5*sin(2*pi*f*t); subplot(3,1,2);stem(t,x);
title('Sine wave sampled at 10000 Hz for 1 period duration '); ylabel('Amplitude')
Fs1 =10000; % another sampling frequency
t = 0:1/Fs1:(2/f); % generation of the time sequence at sampling frequency fs
%for 2 cycle duration
x = 5*sin(2*pi*f*t); subplot(3,1,3);
stem(t,x);
title('Sine wave sampled at 10000 Hz for 2 cycle duration'); ylabel('Amplitude')
xlabel('n ----- >');