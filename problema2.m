%%Problema 2
discreta=@(t)(t.*[(9/10).^t]);
t=[-2:1:10];
escalon=@(o)(o>=0).*(1)+(o<0).*(0);
o=[-2:10];
grafica(t,discreta(t).*escalon(o))
