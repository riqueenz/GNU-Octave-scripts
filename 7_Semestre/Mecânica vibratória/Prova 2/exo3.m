clear
clc
pkg load symbolic
syms wn wd k m fn c Cc epsilon sigma Td
disp("Dados:")

m = 20 # Kg
x0 = 0.01 # m
x1 = 0.004993 # m
Td = 0.06 # s

disp("\nCálculo:")
sigma = log(x0/x1) #ln(x0/x1)
epsilon = sigma/sqrt((4*(pi^2))+sigma^2)
wd = (2*pi)/Td
wn = wd/sqrt(1-(epsilon^2))
k = m*(wn**2)
c = 2*m*wn*epsilon
