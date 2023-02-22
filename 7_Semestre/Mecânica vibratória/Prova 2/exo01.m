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
