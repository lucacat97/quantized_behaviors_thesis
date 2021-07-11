% Symbolic Solution Cycle Graph 


x0 = [5/2,47/18,41/18,25/18,3/2,31/18]; 

syms x1(t) x2(t) x3(t) x4(t) x5(t) x6(t)
q = floor(x0+0.5);
k = circshift(q,-1); 

ode1 = diff(x1) == q(2) -x1
ode2 = diff(x2) == q(3) -x2
ode3 = diff(x3) == q(4) -x3
ode4 = diff(x4) == q(5)-x4
ode5 = diff(x5) == q(6) -x5
ode6 = diff(x6) ==  q(1)-x6


cond1 = x1(0) == x0(1);
cond2 = x2(0) == x0(2);
cond3 = x3(0) == x0(3);
cond4 = x4(0) == x0(4);
cond5 = x5(0) == x0(5);
cond6 = x6(0) == x0(6);

odes = [ode1; ode2; ode3; ode4; ode5; ode6];
conds = [cond1; cond2; cond3; cond4; cond5; cond6];

S = dsolve(odes,conds)
x1Sol(t) = S.x1
x2Sol(t) = S.x2
x3Sol(t) = S.x3
x4Sol(t) = S.x4
x5Sol(t) = S.x5
x6Sol(t) = S.x6

sol_store = zeros(1,6)
solstore(1,1) = x1Sol(t)
solstore(2,1) = x2Sol(t)
solstore(3,1) = x3Sol(t)
solstore(4,1) = x4Sol(t)
solstore(5,1) = x5Sol(t)
solstore(6,1) = x6Sol(t)


