raices([1,2,3])
function [r] = raices(coef)
l = length(coef);

%sumatoria de los coeficientes
sum = 0
for i = 1:(l-1);
    sum = sum + abs(coef(i))/abs(coef(l))
endfor
if sum > 1 
    x0 = sum 
else 
    x0 = 1
endif


p = 0;
for j = 1:l
    p(j) =  @(x) coef(j) * x^(j-1) + p ;
        
endfor

f = p;
d = 1;
maxIt = 10;
tol = 1e-12;
for j = 2:(l-1)
    
    d = (x - r_j(1)) * d;

    f = p/d;

    
r(j) = newton(f,fp,x0,tol,maxIt);


endfor
r
endfunction

