clc
clear all;
close all
temp = [ 200 250 300 350 400 450] ; % in kelvin
density=[1.708 1.367 1.139 0.967 0.854 0.759]; % kg/m^3ti=330;
figure
plot(temp,density)
xlabel('temperature in Kelvin')
ylabel('density')
grid on;
ti=330;
di= lagrange(temp,density,ti)