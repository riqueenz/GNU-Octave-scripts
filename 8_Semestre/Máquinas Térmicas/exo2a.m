clear
clc
disp("Dados:")

h1 = 3625.3 # kJ/kg
h2 = 3440.1138 # kJ/kg
h3 = 3422.2 # kJ/kg
h4 = 2392.905418 # kJ/kg
h5 = 340.49 # kJ/kg
h6 = 350.89195 # kJ/kg

disp("b) Wciclo/m:")
Wciclo = (h1-h2)+(h3-h4)-(h6-h5)

disp("c) Calor adicionado")
Qin = (h1-h6)+(h3-h2)

disp("d) Eficiencia termica")
n = Wciclo/Qin
