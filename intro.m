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
%%  *Compresi�n de la se�al*
stem(n,f(2*n),'MarkerFaceColor',[0 0 0],'LineWidth',2,'Color',[0 0 0]);
xlabel('n');
grid('on');
ylabel('x  [n]');
title('Compresi�npor un factor 2');
%% *Expansi�n de la se�al
N=0:2:20;
stem(N,f(N/2),'MarkerFaceColor',[0 0 0],'LineWidth',2,'Color',[0 0 0]);
xlabel('n');
grid('on');
ylabel('x  [n]');
title('Expansi�n un factor 2');