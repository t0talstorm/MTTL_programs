clc
clear all
syms f a t

f1=t*cos(a*t)
df1=diff(f1,1)
df2=diff(f1,2)

f2=t^3+cosh(a*t)
df1=diff(f2,1)
df2=diff(f2,2)

f3=7*(t^4)+2*exp(-t)+3*(exp(-3*t))
df1=diff(f3,1)
df2=diff(f3,2)

clc
clear all
syms t a x
i1=exp(2*t)
int1=int(i1)

i2=sin(2*t)
int2=int(i2,t,0,2*pi)

i3=1/((a^2)+(x^2))
int3=int(i3,x,-inf,inf)

i4=exp(-x^2)
int4=int(i4,x,0,inf)

i5 = exp(-a*(x^2))
int5 = int(i5,x,-inf,inf)

syms t s
h1=3*heaviside(t-2)
H1=laplace(h1,t,s)

h2=sin(2*t)*(heaviside(t-2*pi)-heaviside(t-4*pi))
H2=laplace(h2,t,s)

syms t
d1=exp(-5*t)*dirac(t-2)
ID1=int(h1,t,0,inf)

d2=cos(2*t)*dirac(t-pi/4)
ID2=int(d2,t,0,inf)

