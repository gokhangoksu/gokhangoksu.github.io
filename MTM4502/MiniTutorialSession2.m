clc
clear all
close all

syms x y
f=x^3-y^3+3*x*y;
gradfunc=gradient(f);
hessianfunc=hessian(f);

subs(gradfunc,{x,y},{2,1});
subs(hessianfunc,{x,y},{2,1});

[xAns,yAns]=solve(gradfunc==0);
x1=xAns(1);
y1=yAns(1);

x2=xAns(2);
y2=yAns(2);
hessianFunc1=subs(hessianfunc,{x,y},{x1,y1})
hessianFunc1=double(hessianFunc1)
eigs(hessianFunc1)


hessianFunc2=subs(hessianfunc,{x,y},{x2,y2})
hessianFunc2=double(hessianFunc2)
eigs(hessianFunc2)