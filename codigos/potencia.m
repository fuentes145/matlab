% potencia ç
%ecalando para que no se agrande mucho
clear

A = [7 3 ; 1 5]

% valores propios (dominante.)
lambda = (eig(A))


% vector inicial
x = [1;0]
p = 1; % indice donde se alcanza la norma infinito

% Von Mises
for k=1:3
    y = A*x;
    mu = y(p);
    [~,p] = max(abs(y));
    my = y(p);
    y
    x = y/my;
    
    % error
    err(k) = abs(mu);
endfor

% plot errores
semilogy(1:length(err),err,'LineWidth',4)
set(gca,'FontSize',16)
legend('error |\lambda-\mu_n|')