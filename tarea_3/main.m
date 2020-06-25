clear
f = @(x) sin(x) ;
a=0;
b=pi/2;
N=32;
A = InterpolarAtrozos(f, a, b, N);
graficarP(A,a,b)


