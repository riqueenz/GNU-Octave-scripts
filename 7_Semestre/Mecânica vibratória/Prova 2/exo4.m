clear
clc
pkg load symbolic
syms wn wd k m fn c Cc epsilon sigma Td x0 x1

m = 200 # Kg
#x0 = 0.01 # m
x1 = (x0/4)*(1/4) # m
Td = 2 # s

sigma = log(x0/x1) #ln(x0/x1)
sigma = double(sigma)
epsilon = sigma/sqrt((4*(pi^2))+sigma^2)
wd = (2*pi)/Td
wn = wd/sqrt(1-(epsilon^2))
k = m*(wn^2)
c = 2*m*wn*epsilon
