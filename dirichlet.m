clc
clear all
close all
l=10;
h1=0.05;
t_inf=200;
t1=300;
tf=400;
x=0:0.01:10;
zg1=5;

g=@(x,t,z) -h1*(t_inf-t);
temp1= heun(g,x,t1,zg1);
en=length(temp1);
tf1=temp1(en);

zg2=10;
temp2= heun(g,x,t1,zg2);
tf2=temp2(en);

zg=zg1+((zg1-zg2)/(tf1-tf2))*(tf-tf1);
temp= heun(g,x,t1,zg);

figure
plot(x,temp1)
hold on
plot(x,temp2)
hold on
plot(x,temp)
hold off