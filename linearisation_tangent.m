clear
clc

clear
clc
syms I0z theta_pp k theta F L x1 x2 x h

disp('Modele non lineaire')
eqn = I0z*theta_pp+k*(L^2)*sin(x1)*cos(x1) == F*(L/2)*cos(x1)

theta_pp = expand(solve(eqn, theta_pp));

f1 = x2
f2 = theta_pp

disp('Modele linearise tangent au point d'equilibre')
Jx = jacobian([f1, f2], [x1 x2])
Ju = jacobian([f1, f2],[F])

x1 = 0
x2 = 0
L = 1 # m
k = 100*10^3 # N/m
I0z = 50*10^3 # kg*m^2

A = subs(Jx)
B = subs(Ju)

disp('Comandabilite do systeme')
p(h)=det(h*eye(2)-A)
solve(p)
Ccom = [B, A*B]
rank(Ccom)
