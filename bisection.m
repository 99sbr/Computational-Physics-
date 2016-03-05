function root = bisection(f,x1,x2,tol)
it=0;
  while(abs((x1-x2)/x1)>tol)
    it=it+1;
    x3=(x1+x2)/2;
      if f(x1)*f(x3)<0
        x2=x3;
      else
        x1=x3;
       end
   end 
 root=x3;
 