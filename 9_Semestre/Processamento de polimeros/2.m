clear
clc
disp("Dados:")
s = 2 # mm
aef = 0.07 # mm2/s

Tinj = 200 # °C
Text = 60 # °C

Tm = 20 # °C
tres1 = s**2/(pi*pi*aef)*log((4/pi)*((Tinj-Tm)/(Text-Tm)))

Tm = 40 # °C
tres2 = s**2/(pi*pi*aef)*log((4/pi)*((Tinj-Tm)/(Text-Tm)))
