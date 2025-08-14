%for mod use abs 
%fourier()
%ifourier

syms a b t s ;

f1 = exp(-t^2) ;
F1 = fourier(f1)

f2 = a * abs(t);
F2 = fourier(f2)

f3 = a * cos(b*t);
F3 = fourier(f3)

f4 = a* sin(b*t);
F4 = fourier(f4)


G1 = s ;
g1 = ifourier(G1)

G2 = cos(b*s);
g2 = ifourier(G2)

G3 = sin(b*s);
g3 = ifourier(G3)
