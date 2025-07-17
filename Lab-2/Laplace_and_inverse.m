syms a t s; 
f1 = laplace(cos(a*t))
f2 = laplace(sin(a*t))
f3 = laplace(cosh(a*t))
f4 = laplace(sinh(a*t))
f5 = laplace(1+2*exp(-t)+3*exp(-2*t))

i1 = ilaplace(s/(s^2 + a^2))
i2 = ilaplace(a/(s^2 + a^2))
i3 = ilaplace(s/(s^2 - 9))
i4 = ilaplace(5/(s^2 -25))
i5 = ilaplace(1/(s^2 - 7))
i6 = ilaplace((2/(s + a))+(3/(s+2))+1/s)
