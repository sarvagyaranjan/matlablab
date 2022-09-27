clc;clear all; close all;

%Digital Fiter Specification
wp = 0.2*pi;
ws = 0.3*pi;
rp = 1;
rs = 15;

%Analog Design
T = 1;
wa_p = wp/T;
wa_s = ws/T;

%Cheybshev 1 Analog Filter
[N,w] = cheb1ord(wp,ws,rp,rs,'s');
[b, a] = cheby1(N, rp, w, 's');
[H, W] = freqs(b,a);
subplot(3,2,1);plot(W/(2*pi),20*log10(abs(H))),grid on;
title('Frequency Response');
xlabel(' Frequency in Hz '),ylabel(' Magnitude in dB ');
disp(' the order and cut off frequency in Hz are '),disp( N),disp( w/(2*pi));
[bb_z, ab_z] = bilinear(b,a,1/T);
[Hbd,wbd] =  freqz(bb_z,ab_z);
subplot(3,2,2);plot(wbd/pi,20*log10(abs(Hbd))),grid on;
ylabel('Magnitiude in dB');
xlabel('Frequency in pi units');

%Cheybshev 2 Analog Filter
[N2,w2] = cheb2ord(wp,ws,rp,rs,'s');
[b2, a2] = cheby2(N2, rp, w2, 's');
[H2, W2] = freqs(b2,a2);
subplot(3,2,3);plot(W2/(2*pi),20*log10(abs(H2))),grid on;
title('Frequency Response');
xlabel(' Frequency in Hz '),ylabel(' Magnitude in dB ');
disp(' the order and cut off frequency in Hz are '),disp( N2),disp( w2/(2*pi));
[bb_z2, ab_z2] = bilinear(b2,a2,1/T);
[Hbd2,wbd2] =  freqz(bb_z2,ab_z2);
subplot(3,2,4);plot(wbd2/pi,20*log10(abs(Hbd2))),grid on;
ylabel('Magnitiude in dB');
xlabel('Frequency in pi units');

%Elliptical Analog Filter
[N3,w3] = ellipord(wp,ws,rp,rs,'s');
[b3, a3] = ellip(N3, rp, rs,w3, 's');
[H3, W3] = freqs(b3,a3);
subplot(3,2,5);plot(W3/(2*pi),20*log10(abs(H3))),grid on;
title('Frequency Response');
xlabel(' Frequency in Hz '),ylabel(' Magnitude in dB ');
disp(' the order and cut off frequency in Hz are '),disp( N3),disp( w3/(2*pi));
[bb_z3, ab_z3] = bilinear(b3,a3,1/T);
[Hbd3,wbd3] =  freqz(bb_z3,ab_z3);
subplot(3,2,6);plot(wbd3/pi,20*log10(abs(Hbd3))),grid on;
ylabel('Magnitiude in dB');
xlabel('Frequency in pi units');