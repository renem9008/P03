% Enerigia Se�ales en tiempo discreto 
function Ex=energiadis(t,fun)
%t es el vector de tiempo
% fun es la funci�n a la que se le calcula la energ�a
X=fun(t);
E=X.^2;
Ex=sum(E);
stem(t,X,'MarkerFaceColor',[0 0 0],'LineWidth',2,'Color',[0 0 0]);
xlabel('n');
grid('on');
ylabel('x  [n]');
title('Gr�fica de la Funci�n');
end 