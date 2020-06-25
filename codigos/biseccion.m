
f= @(x) (x+2)*(x-1)*(x-1);
f(-.5)
f(1.3)
a = -0.5
b = 2.5
if f(a)*f(b)>0 
    disp('f no tiene raiz en este intervalo'); %Bolzano
    return;
    endif
count=0;
c = (a + b)/2;
err = abs(f(c));
 
    while err > 10^-5
      c = (a + b)/2;
   if f(a)*f(c)<0 
       b = c; %parte izquieda
   else
       a = c;  %parte derecha         
   endif
   
    count=count+1;
   err = abs(f(c));
  endwhile
  err
  count
  c


%0 a 2
    