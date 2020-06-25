function graficarP(A,a,b)
ja= a;
c = 0;
hold on
for j= a:((b-a)/length(A(:,1))):b
if ~(j==a)
xq = ja:0.001:j;
plot(xq,polyval(A(c,:),xq))
ja=j;
endif
c = c+1;
endfor
hold off
endfunction