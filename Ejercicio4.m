%% Práctica 3. Señales en tiempo discreto
%
% Equipo:
%
% * Alarcon Camacho Aldo Yosef
% * Monroy Reza Rene
% * Ochoa Velezquez José Abraham
% 
% Grupo: 2MV1

%% Introducción 
%
% *Señales en tiempo discreto*
% 
% Una señal de tiempo disctreto es básicamente una secuencia de numeros. 
% Tales señales surgen naturalmente en un tiempo inherente discreto
% como estudios de población, problemas de amotrización, modelos de ingreso
% nacional y seguimiento por radar. Tamien pueden surgir como resultado del
% muestreo de señales en tiempo continuo.
% Dichas señales pueden denotarse como _x[n]_.
%
% 
% *Escalamiento *
%% Ejercicio 4
%
% Crea una función que calcule la energía de una señal en tiempo discreto
%
%
% <include>energiadis.m</include> 
%
%
%% Ejercicio 5
%
% Resuleve el problema 3.1.1 c) de Lathi, aplicando la función anterior 
% 
t=-10:10;
f=@(t) (t<-3).*(0)+(t>=-3 & t<=3).*(t)+(t>3).*(0);
Energia=energiadis(t,f);