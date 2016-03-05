clc
clear all
close all
v=[0.10377,0.11144,0.12547];
s=[6.4147,6.5453,6.7664];
vf=0.118;
sf = lagrange(v,s,vf);
disp(sf)
n=length(v);
ans=polyval(v,s,n);
s=[6.4147,6.5453,6.7664];
vf=0.118;
sf1= newton(v,s,vf);
disp(sf1)