clear
clc
pkg load symbolic
syms wn wd k m fn c Cc epsilon sigma Td x0 x1
disp("Dados:")

m = 1100 % Kg
m0 = 26 % Kg
k = 1.5e6 % N/m
f = 500 % rpm
Xp = 0.01 % m
curso = 0.45 % m

disp("\nCálculo:")
e = curso/2
f = f/60 % rps ou Hz
w = 2*pi*f
wn = sqrt(k/m)
r = w/wn
% passando variáveis float para simbólico
e = sym(double(e), 'r');
r = sym(double(r), 'r');
Xp = sym(double(Xp), 'r');
% continuando com o cálculo
epsilon = solve((m*Xp)/(m0*e) == r^2/sqrt(((1-(r^2))^2)+((2*epsilon*r)^2)), epsilon)(2,1);
epsilon = double(epsilon)
c = 2*m*wn*epsilon
