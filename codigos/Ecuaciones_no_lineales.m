%%
%ITERACION DE PICARD O ITERACION DE PUNTO FIJO
clear

% funcion x^3+4x^2-10 sobre intervalo [a,b] = [1,2]
f = @(x) x^3+4*x^2-10;
a = 1; b = 2; ancho = b-a;
fa = f(a); fb = f(b);

% raiz exacta
x = 1/3*(-4 + (71 - 3*sqrt(105))^(1/3) + (71 + 3*sqrt(105))^(1/3));

% funciones gj
g{1} = @(x) x-x.^3-4*x.^2+10;
g{2} = @(x) sqrt(10./x-4*x);
g{3} = @(x) 0.5*sqrt(10-x.^3);
g{4} = @(x) sqrt(10./(4+x));
g{5} = @(x) x - (x.^3+4*x.^2-10)./(3*x.^2+8*x);
g{1}
% numeros de iteraciones
nIt = 20;

% valor inicial
for j=1:5
    c{j} = 1;
end

% iteracion de Picard
for j=1:nIt
    for k=1:5
        c{k} = g{k}(c{k});
      
        err{k}(j) = abs(x-c{k});
    end
end
% Graficar errores g_1
%%
plot(1:nIt,err{1},'LineWidth',4)
set(gca,"fontsize", 20)

%%
% Graficar errores g_2
plot(1:nIt,err{2},'LineWidth',4)
set(gca,"fontsize", 20)
%%
% Graficar errores g_3, g_4, g_5
plot(1:nIt,err{3},'LineWidth',4,1:nIt,err{4},'LineWidth',4,1:nIt,err{5},'LineWidth',4)
set(gca,"fontsize", 20)
legend('err. g_3','err. g_4','err. g_5')
%%
% Graficar errores g_3, g_4, g_5
warning off
semilogy(1:nIt,err{3},'LineWidth',4,1:nIt,err{4},'LineWidth',4,1:nIt,err{5},'LineWidth',4)
set(gca,"fontsize", 20)
legend('err. g_3','err. g_4','err. g_5')
%%
%METODO DE NeWTON


%%
%f(x)=x2−2 


f = @(x) x^2-2;
fp = @(x) 2*x;
x0 = 1;
maxIt = 10;
tol = 1e-16;

for j=1:maxIt
    [x,n] = newton(f,fp,x0,tol,j);
    err(j) = abs(sqrt(2)-x);
    N(j) = n;
end
err
N


%%
% SISTEMAS DE ECUACIONE NO LINEALES
clear all

f1 = @(x,y) x.^2+y.^2-4;
f2 = @(x,y) (x-2).^2+y.^2-4;

[x,y] = meshgrid(-3:0.1:3,-3:0.1:3);
z1 = f1(x,y);
z2 = f2(x,y);
figure
subplot (1, 2, 1)
surf(x,y,z1);
subplot(1,2,2)
surf(x,y,z2);
%%