clc;
clear all;
close all;

%Digital Fiter Specification
wp = 30;
ws = 40;
rp = 1;
rs = 30;
T = 0.1;

%Butterworth Analog Filter
[Nb,wbc] = buttord(wp,ws,rp,rs,'s');
[b4, a4] = butter(Nb, wbc, 's');
[H4, W4] = freqs(b4,a4);
subplot(3,1,1);plot(W4/(2*pi),20*log10(abs(H4))),grid on;
title('Frequency Response');
xlabel(' Frequency in Hz '),ylabel(' Magnitude in dB ');
disp(' the order and cut off frequency in Hz are '),disp( Nb),disp( wbc/(2*pi));
[bb_z4, ab_z4] = bilinear(b4,a4,1/T);
[Hbd4,wbd4] =  freqz(bb_z4,ab_z4);
subplot(3,1,2);plot(wbd4/pi,20*log10(abs(Hbd4))),grid on;
ylabel('Magnitiude in dB');
xlabel('Frequency in pi units');
[bb_z3, ab_z3] = impinvar(b4,a4,1/T);
[Hbd3,wbd3] =  freqz(bb_z3,ab_z3);
subplot(3,1,3);plot(wbd3/pi,20*log10(abs(Hbd3))),grid on;
ylabel('Magnitiude in dB');
xlabel('Frequency in pi units');

