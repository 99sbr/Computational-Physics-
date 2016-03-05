t1=0;dt=0.01;h=dt;
%t=[t1:dt:tn];
g1=9.8;
gx=@(t,x,vx) 0;
gy=@(t,y,vy) -g1;
fx=@(t,x,vx) vx;
fy=@(t,y,vy) vy;
theta=30;
u=700;theta_rad=theta*(pi/180);
vx1=u*cos(theta_rad);
vy1=u*sin(theta_rad);
%n=length(t);
%x=zeros(1,n);
%y=zeros(1,n);
%vx=zeros(1,n);
%vy=zeros(1,n);
x1=0;y1=0;
while(1)
t2=t1+dt;
    s1=fx(t1,x1,vx1);
    p1=gx(t1,x1,vx1);
    s2=fx(t2,x1+h*s1,vx1+h*p1);
    p2=gx(t2,x1+h*s1,vx1+h*p1);
    x2=x1+(h/2)*(s1+s2);
    vx2=vx1+(h/2)*(p1+p2);
    u1=fy(t1,y1,vy1);
    v1=gy(t1,y1,vy1);
    u2=fy(t2,y1+h*u1,vy1+h*v1);
    v2=gy(t2,y1+h*u1,vy1+h*v1);
    y2=y1+(h/2)*(u1+u2);
    vy2=vy1+(h/2)*(v1+v2);
    if(y2<0)
        break
    end
    plot(x1,y1,'.')
    hold on;
    x1=x2;
    y1=y2;
    vx1=vx2;
    vy1=vy2;
    t1=t2;
end

    
    