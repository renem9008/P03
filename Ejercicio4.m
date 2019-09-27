%% Pr�ctica 3. Se�ales en tiempo discreto
%
% Equipo:
%
% * Alarcon Camacho Aldo Yosef
% * Monroy Reza Rene
% * Ochoa Velezquez Jos� Abraham
% 
% Grupo: 2MV1

%% Introducci�n 
%
% *Se�ales en tiempo discreto*
% 
% Una se�al de tiempo disctreto es b�sicamente una secuencia de numeros. 
% Tales se�ales surgen naturalmente en un tiempo inherente discreto
% como estudios de poblaci�n, problemas de amotrizaci�n, modelos de ingreso
% nacional y seguimiento por radar. Tamien pueden surgir como resultado del
% muestreo de se�ales en tiempo continuo.
% Dichas se�ales pueden denotarse como _x[n]_.
%
% 
% *Escalamiento *
%% Ejercicio 4
%
% Crea una funci�n que calcule la energ�a de una se�al en tiempo discreto
%
%
% <include>energiadis.m</include> 
%
%
%% Ejercicio 5
%
% Resuleve el problema 3.1.1 c) de Lathi, aplicando la funci�n anterior 
% 
t=-10:10;
f=@(t) (t<-3).*(0)+(t>=-3 & t<=3).*(t)+(t>3).*(0);
Energia=energiadis(t,f);