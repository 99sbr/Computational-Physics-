function [x1 x2 x3 v1 v2 v3] = heun4(g1,g2,g3,t,x1i,x2i,x3i,v1i,v2i,v3i)
% To solve three simultaneous 2nd order differential equations
% via Heun's method
%
% Input:
%   g1: Functions denoting dx1^2/dt^2. Similar for g2 and g3
%   t:  Time 1D array 
%   x1i: Scalar quantity. Denotes initial value of x1 at time t1
%   x2i and x3i: Definition similar to x1i
%   v1i: Scalar quantity. Denotes initial value of v1 at time t1
%   v2i and v3i: Definition similar to v1i
% Output:
%   x1: 1D array. Denoting displacement in spring 1. 
%   v1: 1D array. Denoting velocity of spring 1. 
%       Similarly for spring 2 and 3.

n = length(t) ;
dt = (t(n) - t(1)) / (n-1) ;

% Preallocation
x1 = zeros(1,n) ; 
% Similarly for x2, x3, v1, v2, v3 

% First value of the array
x1(1) = x1i 
% Similarly for x2(1), x3(1), v1(1), v2(1), v3(1) 

% Defining dx1/dt and so on
f1 = @(v1) v1 ;
% Similarly for f2, f3

for i = 1:n-1
    
    s1 = f1(v1(i)) ;
    p1 = g1(x1(i),x2(i)) ;
    
    % Similarly for (u1, q1) and (w1, r1)
    u1 = f2() ;
    q1 = g2() ;
    
    w1 = f3() ;
    r1 = g3() ;
   

    % Can we write s2, p2 just after s1, p1?
    s2 = f1(v1(i)+dt*p1) ;
    p2 = g1(x1(i)+dt*s1, x2(i)+dt*u1) ;
    % Why not 
    %   p2 = g1(x1(i+1), x2(i)+dt*s1)? 
    % Why is x3 missing from the above? 
    % How have you defined g1, g2, g3?
    % Note:
    %   g1 is a fn of x1, x2
    %   g2 is a fn of x1, x2, x3
    %   g3 is a fn of x2, x3
    
    % Similarly for (u2, q2) and (w2, r2)
    u2 = f2() ;
    q2 = g2() ;
    
    w2 = f3() ;
    r2 = g3() ;
    

    x1(i+1) = x1(i) + dt * (s1 + s2) / 2 ;
    v1(i+1) = v1(i) + dt * (p1 + p2) / 2 ;
   
    % Similarly for (x2, v2) and (x3, v3)
    x2(i+1) = 
    v2(i+1) = 
    
    x3(i+1) = 
    v3(i+1) = 
end

end
