%%Introduccion
%En este documento analizaremos a fondo el comportamiento de las funciones
%en tiempo discreto al ser escaladas horizontalmente, para ello utilizare
%un par de ejemplos para ilustrar la situacion

%Supongamos que tenemos una funcion f[n]=2n (con -3<n<3), supongamos ahora que queremos hacer otrafunccion que sea un escalamiento horizontal
%3 unidades tal que g[n]=f[3n], a este escalamiento se le conoce como
%compactación horizontal, lo unico que tenemos que hacer para obtener a
%g[n] es reemplazar con un 3n a todas las n que aparecen en f[n] incluyendo los limites de forma
%que nos queda g[n]=2(3n)=6n (con -3<3n<3), despejando los limites no
%queda: g[n]=f[3n]=6n (con -1<n<1). Dado que las funciones discretas solo se
%evaluan con valores enteros la grafica g[n] pierde valores si la
%comparamos con f[n] ya que se ha redicido su rango

%Ahora imaginemos la siguinte funcion, h[t]=f[n/3], a este escalamiento se 
%le conoce como expancion horizontal y se resuelve la misma foma, 
%reemplazamos con un n/3 a toda las n en f[n] (incluyendo los limites) de 
%modo que nos queda h[n]=f[n/3]=2n/3 (con -3<(n/3)<3). Como las funciones 
%discretas solo se evaluan en en numeros pesitivos esta solo sera diferente
%de cero cunado la evaluemos en multiplos de 3 entre -9 y 9 
%
%
%x[-n]
x1=[-3 -2 -1 0 1 2 3];
y1=[3 2 1 0 -1 -2 -3];
subplot(2,3,4);
stem(x1,y1);
xlabel('x[-n]')
grid on
title('Incicso a)')
%
%x[n+6]
x2=[-9 -8 -7 -6 -5 -4 -3];
y2=[-3 -2 -1 0 1 2 3];
subplot(2,3,2);
stem(x2,y2);
xlabel('x[n+6]')
grid on
title('Incicso b)')
%
%x[n-6]
x3=[3 4 5 6 7 8 9];
y3=[-3 -2 -1 0 1 2 3];
subplot(2,3,3);
stem(x3,y3);
xlabel('x[n-6]')
grid on
title('Incicso c)')
%
%x[3n]
x4=[-1 0 1];
y4=[-3 0 3];
subplot(2,3,4);
stem(x4,y4);
xlabel('x[3n]')
grid on
title('Incicso d)')
%x[n/3]
x5=[-9 -6 -3 0 3 6 9];
y5=[-3 -2 -1 0 1 2 3];
subplot(2,3,5);
stem(x5,y5);
xlabel('x[n/3]')
grid on
title('Incicso e)')
%
%x[3-n]
x6=[0 1 2 3 4 5 6];
y6=[3 2 1 0 -1 -2 -3];
subplot(2,3,6);
stem(x6,y6);
xlabel('x[3-n]')
grid on
title('Incicso f)')
