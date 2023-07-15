clear
clc
warning ('off', 'OctSymPy:sym:rationalapprox');
pkg load symbolic

disp("Dados:")
syms P1 P2 P3 P4 h2s h4s h1 h2 h3 h4 hx

nt = 0.85
nc = 0.8
nreg = 0.8

# Pela tabela A22
T1 = 300 # K
h1 = 300.19 # kJ/kg
Pr1 = 1.386

P2 = 8*P1
Pr2s = (P2/P1)*Pr1
vpa(Pr2s, 6)

# Interpola‡?o
h2s = solve((h2s-533)/(544.35-533.98)==(Pr2s-10.37)/(11.1-10.37))
vpa(h2s, 6)

# Pela tabela A22
T3 = 1300 # K
h3 = 1395.97 # kJ/kg
Pr3 = 330.9

Pr4s = (1/8)*Pr3
vpa(Pr4s, 7)

# Interpola‡?o
h4s = solve((h4s-789.11)/(800.03-789.11)==(Pr4s-41.31)/(43.35-41.31))
vpa(h4s, 7)

h4 = solve(nt==(h3-h4)/(h3-h4s),h4)
vpa(h4, 7)

h2 = solve(nc==(h2s-h1)/(h2-h1),h2)
vpa(h2, 7)

hx = solve(nreg==(hx-h2s)/(h4s-h2s),hx)
vpa(hx, 7)

# eficiencia sem regenerador
n = ((h3-h4)-(h2-h1))/(h3-h2)
vpa(n, 7)

# eficiencia com regenerador
n = ((h3-h4s)-(h2s-h1))/(h3-hx)
vpa(n, 7)

BWR = (h2-h1)/(h3-h4)
vpa(BWR, 7)
