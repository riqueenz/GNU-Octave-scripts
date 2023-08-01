clear
clc
disp("Dados:")
s = 4 # mm
aef = 0.08 # mm2/s
Tinj = 195 # °C
Tsolid = 135 # °C

Tm = 40 # °C
trecal1 = s**2/(pi*pi*aef)*log((8/(pi**2))*((Tinj-Tm)/(Tsolid-Tm)))

Tm = 85 # °C
trecal2 = s**2/(pi*pi*aef)*log((8/(pi**2))*((Tinj-Tm)/(Tsolid-Tm)))
