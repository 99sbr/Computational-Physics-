%% Assignment 1
% Root Finding
%Q1.
clc
clear all
close all
g=9.8; % in m/s^2
vo=30;% m/s
x=90; % distance to the catcher in "m"
yo=1.8 ; %elevation of thrower's hand in "m"
y=1; % elevation of catcher's hand in "m"
theta=linspace(50,200);
func=y-tan(theta).*x+(g*x^2)./(2*vo^2*(cos(theta)).^2)-yo;
plot(theta,func);
grid on;



