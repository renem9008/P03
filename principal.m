%% Práctica 3
% Integrantes del equipo
% 
% * Alarcon Camacho Aldo yosef
% * Islas Martinez Ceasar
% * Monroy Reza Rene
% * Ochoa Velasquez José Abraham
%
%% Objetivos
%
% * Manipulación básica de MATLAB
% * Gráficas de Señales reales y complejas discretas
% * Transformación de señales discretas (escalamiento y traslaciones)
% * Calculo de energía y poencia de señales discretas
% 
%
%% Introducción 
%
% *Señales en tiempo discreto*
% 
% Una señal de tiempo disctreto es básicamente una secuencia de numeros. 
% Tales señales surgen naturalmente en un tiempo inherente discreto
% como estudios de población, problemas de amotrización, modelos de ingreso
% nacional y seguimiento por radar. Tamien pueden surgir como resultado del
% muestreo de señales en tiempo continuo.
% Dichas señales pueden denotarse como $x[n]$ .
%
% 
% *Escalamiento Horizontal de Señales*
%
% La alteración de la frecuencia de muestreo es algo similar al
% escalamiento de señales en tiemoi continuo. Considere una señal $x[n]$
% comprimida por un factor $M$ . 
% Al comprimir una señal $x[n]$ por el factor $M$ se obtiene $x_{d}$ dada
% por
% $x_{d}[n]=x[Mn]$
%
% Debido a que la restricción para señales en tiempo discreto están
% definidas unicamente para valores enteros del argumento, debemos
% restringir $M$ a valores enteros los valores de $x[Mn]$ en $n=0,1,2,3...$
% son $x[0], x[M], x[2M], x[3M], ...$ Esto significa que $x[Mn]$ toma
% cada muestra de $M$ de $x[n]$ y elimina todas las muestras entre estos valores.
% Por esta razón, esta operación es llamada diezmado. 
%
% En el caso del tiempo continuo, una cpmpresión del tiempo somplemente
% acelera la señal sin que exista pérdidad de datos. En contraste, el diezmado 
% de $x[n]$ generalmente causa pérdida de información. Para ciertas
% condiciones, por ejemplo, sí $x[n]$ es el resultado de expandir alguna
% señal de tiempo continuo, entonces  $x_{d}[n]$ puede todavia retener la 
% información completa sobre $x[n]$ .
% Se genera una señal interpolada en dos pasos; primero, expandimos $x[n]$ 
% por un factor entero $L$ para obtener la señal expandida $x_{e}[n]$ , como 
% $x[n/L] n=0,L,2L,3L...$  o $0$ en otro caso.
%
% *Ejemplo* 
%

% Sea la señal $f[n]=xe^{-x}$
%
f=@(x) x.*(exp(-x));
n=0:10;
stem(n,f(n),'MarkerFaceColor',[0 0 0],'LineWidth',2,'Color',[0 0 0]);
xlabel('n');
grid('on');
ylabel('x  [n]');
title('Funciín original');
%%  Compresión de la señal*
stem(n,f(2*n),'MarkerFaceColor',[0 0 0],'LineWidth',2,'Color',[0 0 0]);
xlabel('n');
grid('on');
ylabel('x  [n]');
title('Compresiónpor un factor 2');
%% Expansión de la señal
N=0:2:20;
stem(N,f(N/2),'MarkerFaceColor',[0 0 0],'LineWidth',2,'Color',[0 0 0]);
xlabel('n');
grid('on');
ylabel('x  [n]');
title('Expansión un factor 2');

%% Desarrollo
%% Problema 1
% Crea una función que se llame _fun1_ y reciba dos parametros $\Omega$ y 
% $a$ la función debe regresar la evaluación $f[n]=r^ncos[\Omega n]+ r^nsen(\Omega n)j$,
% esta función debe trabajar con $r\in R^+$, $\Omega\in R$ y $n\in  N^n$. 
r=1.1;
o=0.5;
n=(-2:20);
[f1,f2,f3]=fun1(r,o,n);
funG(n,f1,f2);
%%  Problema 2
% Construya una función que gráfique funciones de
% $f:N\rightarrow R$ en el formato de su elección y pruebe
% su código mostrando la gráfica de $x[n]=na^nu[n]$ vs $n$ para 
% $n\in {-2,...,10}$ para $a=0.9$.
discreta=@(t)(t.*[(9/10).^t]);
t=[-2:1:10];
escalon=@(o)(o>=0).*(1)+(o<0).*(0);
o=[-2:10];
grafica(t,discreta(t).*escalon(o))


%% Problema 3
% Construya una función que gráfique funciones de
% $f:N\rightarrow R^2$ en el formato de su elección y pruebe
% su código mostrando la gráfica de la función exponencial del primer
% problema.
% Reporte la gráfica de $|f[n]|$ vs $n$ y $\angle f[n]$ vs $n$
%% Grafica_1

funG(n,f1,f2);
%% Grafica_2
nor=abs(f3);
fig2(n,nor)
%% Grafica_3
theta=atan2(f2,f1);
angle(n,theta)
%% Problema 4
% Programe una función que calcule la energía de una señal en tiemp discreto
% la fucion se debe llamar _energiadis_.
% La función recibe dos paramétros de entrada: el vector de tiempo y las
% alturas asignadas. La función regresa la energia de la señal y despliega 
% la gráfica de la señal. 
% Crea una función que calcule la energía de una señal en tiempo discreto
%
%
% <include>energiadis.m</include> 
%
%
%% Problema 5
%
% Resuleve el problema 3.1.1 c) de Lathi, aplicando la función anterior 
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