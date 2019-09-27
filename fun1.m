function[f1,f2,f3]=fun1(r,o,n)
 f1=(r.^n).*cos(o.*n);
 f2=(r.^n).*sin(o.*n);
 f3=f1+f2.*1i;
end
