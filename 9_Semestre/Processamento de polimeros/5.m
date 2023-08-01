clear
clc
disp("Dados:")
s = 2 # mm
aef = 0.06 # mm2/s
Tinj = 210 # °C
Text = 65 # °C
Tm = 40 # °C
tres = s**2/(pi*pi*aef)*log((4/pi)*((Tinj-Tm)/(Text-Tm)))
