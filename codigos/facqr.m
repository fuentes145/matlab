function [Q,R]=facqr(A)
  [m,n]=size(A);
  Q=zeros(m,n);
  R=zeros(n,n);
  for k=1:n
    R(1:k-1,k)=Q(:,1:k-1)'*A(:,k);
    v=A(:,k)-Q(:,1:k-1)*R(1:k-1,k);
    R(k,k)=norm(v);
    Q(:,k)=v/R(k,k);
  endfor
endfunction

%CODIGO EN VENTANA COMANDOS
%defina matriz B original
%A=B; matriz nueva
%for k=1:20
    %[Q,R]=facqr(A);
    %A=R*Q;
    %endfor
