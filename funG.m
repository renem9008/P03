function[g]=funG(n,f1,f2)
g={
figure
stem3(n,f1,f2,'LineWidth',2)
xlabel('Dominio n')
ylabel('Re')
zlabel('Im')
title('Gr�fica de la se�al f[n]=r^ncos[\Omega n]+ r^nsen[\Omega n]j')
};
end