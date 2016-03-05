clc;
clear all;
close all;
v=[-1,-0.5,-0.25,0.25,0.5,1];
s=[-637,-96.5,-20.5,20.5,96.5,637];
vf=0.10;
sf = lagrange(v,s,vf);
disp(sf);
 
