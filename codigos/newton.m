
% f function handle de la funcion f
% fp function handle de la derivada de f
% x0 es valor inicial
% tol es tolerancia tal que |x_n-x_{n-1}| <= tol

x0 = 1;

for n=1:10
    x = x - 4/5*x;
    
    if(abs(x-x0)<0.000000000001)
        break
    endif
    
    x0 = x
    
    endfor
  
   