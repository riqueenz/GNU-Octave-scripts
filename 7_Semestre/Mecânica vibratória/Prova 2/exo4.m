clear
clc
pkg load symbolic
syms wn wd k m fn c Cc epsilon sigma Td x0 x1
disp("Dados:")

x1 = (x0/4)*(1/4) # m
m = 200 # Kg
Td = 2 # s

disp("\nCálculo:")
sigma = log(x0/x1) #ln(x0/x1)
sigma = double(sigma)
epsilon = sigma/sqrt((4*(pi^2))+sigma^2)
wd = (2*pi)/Td
wn = wd/sqrt(1-(epsilon^2))
k = m*(wn^2)
c = 2*m*wn*epsilon
