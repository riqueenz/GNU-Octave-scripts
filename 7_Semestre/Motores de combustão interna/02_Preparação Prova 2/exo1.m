clear % zera as variáveis
clc % apaga a tela

pkg load symbolic % carrega modulo simbólico

% Declarando variaveis simbolicas
syms A D pi S Vdu rv z Vd V1 V2

disp("Inicio da resolução")

disp("\nDados do problema:")
Vd = 1500  % cm^3
