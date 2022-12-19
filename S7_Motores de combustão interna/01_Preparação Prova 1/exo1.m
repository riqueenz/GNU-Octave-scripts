clear # zera as variáveis
clc # apaga a tela

pkg load symbolic # carrega modulo simbólico

# Declarando variaveis simbolicas
syms A D pi S Vdu rv z Vd V1 V2

disp("Inicio da resolução")

disp("\nDados do problema:")
D = 8.2  #cm
S = 7.8  #cm
z = 4 #cilindros
rv = 8.5

# Passando tudo para simbolico para evitar mensagem chata
# E melhorar precisão do cálculo
D = sym (D, 'f');
S = sym (S, 'f');
rv = sym (rv, 'f');

disp("\nPodemos encontrar Vdu = A * S:")
A = (pi * D * D) / 4;
Vdu = A * S;
disp("Cilidrada de um pistão - Vdu em cm3:")
double(Vdu)

disp("\nSabendo que Vd = Vdu * z:")
Vd = Vdu * z;
disp("Cilidrada - Vd em cm3:")
double(Vd)

disp("\nSabendo que rv = (Vdu / V2) + 1")
disp("Então V2 = Vdu / (rv - 1)")
V2 = Vdu / (rv - 1);
disp("Volume morto - V2 em cm3:")
double(V2)

disp("\nSabendo que rv = V1 / V2")
disp("Então V1 = rv * V2")
V1 = rv * V2;
disp("Volume total de 1 cilindro - V1 em cm3:")
double(V1)
