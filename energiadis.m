% Enerigia Señales en tiempo discreto 
function Ex=energiadis(t,fun)
%t es el vector de tiempo
% fun es la función a la que se le calcula la energía
X=fun(t);
E=X.^2;
Ex=sum(E);
stem(t,X,'MarkerFaceColor',[0 0 0],'LineWidth',2,'Color',[0 0 0]);
xlabel('n');
grid('on');
ylabel('x  [n]');
title('Gráfica de la Función');
end 