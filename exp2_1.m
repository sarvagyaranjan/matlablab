clc; % clears the command window
clear all; % clear all variables
close all; % all the existing figure windows will be closed
n = 0:15; % time index for the discrete signal from 0 to 15 with unity sampling
% time
u = [(n)>=0]; % Unit Step
u5 = [(n-5)>=0]; % Delayed step
a5 = 5* u; % Scaled unit step
xn = u-u5; % rectangular window
%x[n]= u[n]- u[n-5] 
xr = n.*u; % Ramp signal
%
v(1:16) = ones(1,16) ; %also defines the unit step vector v of length 16 or a rectangular
%window of size 16.
subplot(321), stem(n,u), title('Unit-step Function'); ylabel('Amplitude '); subplot(322), stem(n,u5), title('Delayed Unit-step Function'); subplot(323), stem(n,a5), title('Amplitude scaled step function ');ylabel('Amplitude');
subplot(324), stem(n,xn), title('Window function ');ylabel('x[n]');xlabel('n ----->')
subplot(325), stem(n,xr), title('Ramp Function');ylabel('Amplitude');xlabel('n ---- >');