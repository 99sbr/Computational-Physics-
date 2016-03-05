 clc
 clear all
 close all
 t1=0;
 dt=0.01;
 h=dt;
 g=9.8;
 fx=@(t,x,vx) vx;
 gx=@(t,x,vx) 0;
 fy=@(t,y,vy) vy;
 gy=@(t,y,vy) -g;
 x1=0;
 y1=0;
 theta=30;
 theta_rad=theta*(pi/180);
 u=700;
 vx1=u*cos(theta_rad);
 vy1=u*sin(theta_rad);
 while(1)
     t2=t1+dt;
     s1x=fx(t1,x1,vx1);
     p1x=gx(t1,x1,vx1);
     s2x=fx(t2,x1+s1x*h,vx1+h*p1x);
     p2x=gx(t2,x1+s1x*h,vx1+h*p1x);
     
     x2=x1+(h)*((s1x+s2x)/2);
     vx2=vx1 + h*((p1x+p2x)/2);
     
     s1y=fy(t1,y1,vy1);
     p1y=gy(t1,y1,vy1);
     s2y=fy(t2,y1+s1y*h,vy1+h*p1y);
     p2y=gy(t2,y1+s1y*h,vy1+h*p1y);
     
     y2=y1+(h)*((s1y+s2y)/2);
     vy2=vy1 + h*((p1y+p2y)/2);
     
     if (y2<0)
         break;
     end
     plot(x1,y1,'b')
     hold on
     x1=x2;
     y1=y2;
     vx1=vx2;
     vy1=vy2;
     t1=t2;
 end