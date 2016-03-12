  clc
  clear all
  close all
  L=10;
  h=0.05;
  sigma=2.7*10^(-9);
  T_inf=200;
  
  Tf=400;
  dx=2;
  alpha=2+h*(dx)^2;
  beta=h*(dx)^2*T_inf;
  gama=sigma*(dx)^2;
  n=floor((L/(dx))+1);
  x=0:2:L;
  T=zeros(1,n);
  
  T(n)=Tf;
  Told=zeros(1,n);
  err=zeros(1,n-2);
  tol=0.01;
  it=0;
  Ta=0;

  
  while(1)
      Told=T;
      for i=1:n-1
         if(i==1)
         T(i)= (beta+gama*((T_inf)^4-T(i)^4)+2*T(i+1)-Ta*(2*dx))/alpha;
          else
          T(i)=(beta+gama*((T_inf)^4-T(i)^4)+T(i-1)+T(i+1))/alpha;
          if(abs(T(i))>tol)
              err(i)=abs((T(i)-Told(i)));
          end
          end
      end
      it=it+1;
      if (max(err)<tol)
          break
      else    
      end
  end
  disp(it)
  figure
  plot(x,T)