clear
clc
pkg load symbolic
syms wn wd k m fn c Cc epsilon

k = 1400 # N/m
m = 4.5 # Kg
c = 50 # N.s/m

wn = sqrt(k/m)
fn = (1/(2*pi))*wn
Cc = 2*m*wn
epsilon = c/Cc

if (epsilon > 0) && (epsilon < 1)
  disp("Movimento oscilatório subamortecido")
  epsilon
  wd = wn*sqrt(1-(epsilon^2))
endif
