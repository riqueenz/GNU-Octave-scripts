clear
clc
pkg load symbolic
syms wn wd k m fn c Cc epsilon sigma Td x0 x1

m = 45 # Kg
k = 4*(2e5) # N/m
f = 32 # Hz
Xp = 1.5e-3 # m

w = 2*pi*f
wn = sqrt(k/m)
r = w/wn
M = 1/(1-(r^2))
M = abs(M)
F = Xp*k/M
