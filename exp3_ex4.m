clc; 
clear all;
close all; frq = 30;
Fs = 1000;
t = 0:1/Fs:1; %window length is 0 to 1
x1 = sin(2*pi*30*t);
x2 = sin(2*pi*80*t);
x3 = sin(2*pi*12*t);
s = x1 + x2 +x3;
X = fft(s); % fft(x, M) can be used to control the DFT length 
l = length(X)/2;
f = (0:(l-1))*Fs/(2*l);
subplot(311), plot(t, s);
title('Sine wave of frequency 30Hz'); xlabel('Time in sec');ylabel('Amplitude'); subplot(312), plot(f,abs(X(1:l)));zoom on; title('Magnitude Response'); ylabel('Amplitude'); ang=(angle(X(1:l)) * (180/pi));
subplot(313), plot(f, ang);
title('Phase Response');xlabel('Frequency in Hz'); ylabel('Angle in Degrees');
