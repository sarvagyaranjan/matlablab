clc;
clear all;
close all;


 a = [1 2 3; 0 8 6; 5 3 1];
 b = [ 0 1; 1 0; 3 5];
 
 c = conv2(a, b);
 disp(c);
 plot(c);
 
 