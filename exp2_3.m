clc; % clears the command window
clear all; % clear all variables
close all; % all the existing figure windows will be closed


n = 0:15;
u = [(n)>=0];
u5 = [(n-5)>=0];
x = u - u5;
y = [1 2 3 4 5];
c = conv(x,y);
stem(c);

