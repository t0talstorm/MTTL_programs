clc
clear all
%EXP 5
%Q1
syms t y Y s 
y0 = 0;
dy0 = 1;
rhs = exp(-t)*sin(t);
dy = s*Y-y0;
d2y = s^2*Y-s*y0-dy0;
L_rhs = laplace(rhs);
L_lhs = d2y+2*dy+5*Y;
Y_sol = solve(L_lhs==L_rhs,Y);
y_sol = ilaplace(Y_sol)

%Q2
y0=1;
dy0=6;
d2y = s^2*Y-s*y0-dy0;
lhs= d2y+4*Y;
rhs=0;
RHS = laplace(rhs,t,s);
Y_sol=solve(lhs == RHS,Y);
y_sol=ilaplace(Y_sol,s,t)


%Q3
syms t s X
x0 = 1;
lhs = s*X - x0 ;
rhs = 10/s - 0.2*X;
X_sol = solve(lhs == rhs, X);
x_sol = ilaplace(X_sol, s, t)


