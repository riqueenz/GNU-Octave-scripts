clear
pkg load symbolic

# Declarando variaveis simbolicas
syms A D pi S Vdu rv z Vd V1 V2

# Inicio da resolução
A = (pi * D * D) / 4
Vdu = A * S

disp("Sabendo que:")
D = 8.2 #cm
S = 7.8 #cm

disp("Podemos encontrar Vdu:")
A = (pi * D * D) / 4;
Vdu = A * S
disp("Cilidrada de um pistão - Vdu em cm3:")
double(Vdu)

disp("\nSabendo que:")
z = 4 #cilindros
Vd = Vdu * z
disp("Cilidrada - Vd em cm3:")
double(Vd)

disp("\nSabendo que rv = (Vdu / 2) + 1")
rv = (Vdu / V2) + 1
