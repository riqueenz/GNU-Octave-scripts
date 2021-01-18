%pkg load symbolic
syms x1 x2 x3

f1=[x3; -2; 0];
f2=[(3/2)*x1; (1/2)*x2; x3];

Delta_f2=[diff(f2,x1),diff(f2,x2),diff(f2,x3)]
f1
Delta_f1=[diff(f1,x1),diff(f1,x2),diff(f1,x3)]
f2
Delta_f2*f1-Delta_f1*f2
