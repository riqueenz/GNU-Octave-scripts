clear
pkg load symbolic

syms A D pi S Vdu
A = (pi * D * D) / 4
Vdu = A * S

disp("Sabendo que:")
D = 8.2 #cm
S = 7.8 #cm

disp("Podemos encontrar Vdu:")
A = (pi * D * D) / 4;
Vdu = A * S
disp("Vdu em cm3:")
double(Vdu)
