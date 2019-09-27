%% Pr�ctica 3
% Integrantes del equipo
% 
% * Alarcon Camacho Aldo yosef
% * Islas Martinez Ceasar
% * Monroy Reza Rene
% * Ochoa Velasquez Jos� Abraham
%
%% Objetivos
%
% * Manipulaci�n b�sica de MATLAB
% * Gr�ficas de Se�ales reales y complejas discretas
% * Transformaci�n de se�ales discretas (escalamiento y traslaciones)
% * Calculo de energ�a y poencia de se�ales discretas
% 
%
%% Introducci�n 
%
% *Se�ales en tiempo discreto*
% 
% Una se�al de tiempo disctreto es b�sicamente una secuencia de numeros. 
% Tales se�ales surgen naturalmente en un tiempo inherente discreto
% como estudios de poblaci�n, problemas de amotrizaci�n, modelos de ingreso
% nacional y seguimiento por radar. Tamien pueden surgir como resultado del
% muestreo de se�ales en tiempo continuo.
% Dichas se�ales pueden denotarse como $x[n]$ .
%
% 
% *Escalamiento Horizontal de Se�ales*
%
% La alteraci�n de la frecuencia de muestreo es algo similar al
% escalamiento de se�ales en tiemoi continuo. Considere una se�al $x[n]$
% comprimida por un factor $M$ . 
% Al comprimir una se�al $x[n]$ por el factor $M$ se obtiene $x_{d}$ dada
% por
% $x_{d}[n]=x[Mn]$
%
% Debido a que la restricci�n para se�ales en tiempo discreto est�n
% definidas unicamente para valores enteros del argumento, debemos
% restringir $M$ a valores enteros los valores de $x[Mn]$ en $n=0,1,2,3...$
% son $x[0], x[M], x[2M], x[3M], ...$ Esto significa que $x[Mn]$ toma
% cada muestra de $M$ de $x[n]$ y elimina todas las muestras entre estos valores.
% Por esta raz�n, esta operaci�n es llamada diezmado. 
%
% En el caso del tiempo continuo, una cpmpresi�n del tiempo somplemente
% acelera la se�al sin que exista p�rdidad de datos. En contraste, el diezmado 
% de $x[n]$ generalmente causa p�rdida de informaci�n. Para ciertas
% condiciones, por ejemplo, s� $x[n]$ es el resultado de expandir alguna
% se�al de tiempo continuo, entonces  $x_{d}[n]$ puede todavia retener la 
% informaci�n completa sobre $x[n]$ .
% Se genera una se�al interpolada en dos pasos; primero, expandimos $x[n]$ 
% por un factor entero $L$ para obtener la se�al expandida $x_{e}[n]$ , como 
% $x[n/L] n=0,L,2L,3L...$  o $0$ en otro caso.
%
% *Ejemplo* 
%

% Sea la se�al $f[n]=xe^{-x}$
%
f=@(x) x.*(exp(-x));
n=0:10;
stem(n,f(n),'MarkerFaceColor',[0 0 0],'LineWidth',2,'Color',[0 0 0]);
xlabel('n');
grid('on');
ylabel('x  [n]');
title('Funci�n original');
%%  Compresi�n de la se�al*
stem(n,f(2*n),'MarkerFaceColor',[0 0 0],'LineWidth',2,'Color',[0 0 0]);
xlabel('n');
grid('on');
ylabel('x  [n]');
title('Compresi�npor un factor 2');
%% Expansi�n de la se�al
N=0:2:20;
stem(N,f(N/2),'MarkerFaceColor',[0 0 0],'LineWidth',2,'Color',[0 0 0]);
xlabel('n');
grid('on');
ylabel('x  [n]');
title('Expansi�n un factor 2');

%% Desarrollo
%% Problema 1
% Crea una funci�n que se llame _fun1_ y reciba dos parametros $\Omega$ y 
% $a$ la funci�n debe regresar la evaluaci�n $f[n]=r^ncos[\Omega n]+ r^nsen(\Omega n)j$,
% esta funci�n debe trabajar con $r\in R^+$, $\Omega\in R$ y $n\in  N^n$. 
r=1.1;
o=0.5;
n=(-2:20);
[f1,f2,f3]=fun1(r,o,n);
funG(n,f1,f2);
%%  Problema 2
% Construya una funci�n que gr�fique funciones de
% $f:N\rightarrow R$ en el formato de su elecci�n y pruebe
% su c�digo mostrando la gr�fica de $x[n]=na^nu[n]$ vs $n$ para 
% $n\in {-2,...,10}$ para $a=0.9$.
discreta=@(t)(t.*[(9/10).^t]);
t=[-2:1:10];
escalon=@(o)(o>=0).*(1)+(o<0).*(0);
o=[-2:10];
grafica(t,discreta(t).*escalon(o))


%% Problema 3
% Construya una funci�n que gr�fique funciones de
% $f:N\rightarrow R^2$ en el formato de su elecci�n y pruebe
% su c�digo mostrando la gr�fica de la funci�n exponencial del primer
% problema.
% Reporte la gr�fica de $|f[n]|$ vs $n$ y $\angle f[n]$ vs $n$
%% Grafica_1

funG(n,f1,f2);
%% Grafica_2
nor=abs(f3);
fig2(n,nor)
%% Grafica_3
theta=atan2(f2,f1);
angle(n,theta)
%% Problema 4
% Programe una funci�n que calcule la energ�a de una se�al en tiemp discreto
% la fucion se debe llamar _energiadis_.
% La funci�n recibe dos param�tros de entrada: el vector de tiempo y las
% alturas asignadas. La funci�n regresa la energia de la se�al y despliega 
% la gr�fica de la se�al. 
% Crea una funci�n que calcule la energ�a de una se�al en tiempo discreto
%
%
% <include>energiadis.m</include> 
%
%
%% Problema 5
%
% Resuleve el problema 3.1.1 c) de Lathi, aplicando la funci�n anterior 
% 
t=-10:10;
f=@(t) (t<-3).*(0)+(t>=-3 & t<=3).*(t)+(t>3).*(0);
Energia=energiadis(t,f);
%% Problema 6
% Resuelve el problema 3.2.3 de Lathi
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

%% Referencias
%%
%  
% 
% * Cleve Moler. (2004). The Origins of MATLAB. 2019, de MathWorks Sitio web: https://www.mathworks.com/company/newsletters/articles/the-origins-of-matlab.html
% * maslinux. (2017). 3 Alternativas de C?digo abierto a MATLAB. 2019, de maslinux Sitio web: https://maslinux.es/3-alternativas-de-codigo-abierto-a-matlab/
% * B. P. Lathi, Linear systems and signals,Oxford University Press , 2005. Convolucion,procesamiento de se~nales.Recuperado el 6 de septiembre del 2019.https://ramaucsa.wordpress.com/2013/12/17/convolucion-procesamiento-de-senales/
% 