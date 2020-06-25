function A = interpolarAtrozos (f, a, b, N);

  h=(b-a)/N;
  
  for j = 1:N+1 
    xt(2*j-1) = a + (j-1)*h;
    xt(2*j) = a + (j-1)*h + h/2; 
  endfor
  xt(end)=[];
  
  A=[0 0 0];

  for j = 1:2:length(xt)-1
    x = [xt(j) xt(j+1) xt(j+2)];
    V = vander(x);
    b = f(x)'; % lado derecho
    coefs = V\b;
    A = [A;coefs'];
  endfor
  A(1,:) = [] ;
  
endfunction