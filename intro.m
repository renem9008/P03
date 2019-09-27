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
%%  *Compresión de la señal*
stem(n,f(2*n),'MarkerFaceColor',[0 0 0],'LineWidth',2,'Color',[0 0 0]);
xlabel('n');
grid('on');
ylabel('x  [n]');
title('Compresiónpor un factor 2');
%% *Expansión de la señal
N=0:2:20;
stem(N,f(N/2),'MarkerFaceColor',[0 0 0],'LineWidth',2,'Color',[0 0 0]);
xlabel('n');
grid('on');
ylabel('x  [n]');
title('Expansión un factor 2');