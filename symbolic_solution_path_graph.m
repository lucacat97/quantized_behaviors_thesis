% analytic solutions for path graph
x0 = [0,1,2,3,2,1]

syms x1(t) x2(t) x3(t) x4(t) x5(t) x6(t)

ode1 = diff(x1) == 1 -x1
ode2 = diff(x2) == 2 -x2
ode3 = diff(x3) == 3 -x3
ode4 = diff(x4) == 2 -x4
ode5 = diff(x5) == 1 -x5
ode6 = diff(x6) ==  -x6

cond1 = x1(0) == 1/2;
cond2 = x2(0) == 3/2;
cond3 = x3(0) == 5/2;
cond4 = x4(0) == 5/2;
cond5 = x5(0) == 3/2;
cond6 = x6(0) == 1/2;

odes = [ode1; ode2; ode3; ode4; ode5; ode6];
conds = [cond1; cond2; cond3; cond4; cond5; cond6];

S = dsolve(odes,conds)
x1Sol(t) = S.x1
x2Sol(t) = S.x2
x3Sol(t) = S.x3
x4Sol(t) = S.x4
x5Sol(t) = S.x5
x6Sol(t) = S.x6

fplot(x1Sol)
hold on
fplot(x2Sol)
hold on
fplot(x3Sol)
hold on
fplot(x4Sol)
hold on
fplot(x5Sol)
hold on
fplot(x6Sol)
grid on
legend('x1','x2','x3','x4','x5','x6','Location','best')



% cambia la quantizzazione   [ 1 2 2 2 1 1]



ode1 = diff(x1) == 2 -x1
ode2 = diff(x2) == 2 -x2
ode3 = diff(x3) == 2 -x3
ode4 = diff(x4) == 1 -x4
ode5 = diff(x5) == 1 -x5
ode6 = diff(x6) == 1 -x6

cond1 = x1(0) == 0.5;
cond2 = x2(0) == 1.5;
cond3 = x3(0) == 2.5;
cond4 = x4(0) == 2.5;
cond5 = x5(0) == 1.5;
cond6 = x6(0) == 0.5;

odes = [ode1; ode2; ode3; ode4; ode5; ode6];
conds = [cond1; cond2; cond3; cond4; cond5; cond6];

S = dsolve(odes,conds)
x1Sol(t) = S.x1
x2Sol(t) = S.x2
x3Sol(t) = S.x3
x4Sol(t) = S.x4
x5Sol(t) = S.x5
x6Sol(t) = S.x6


% cambia la quantizzazione 
x0 = [ 25/14 27/14 21/14 17/14 15/14 21/14];



ode1 = diff(x1) == 2 -x1
ode2 = diff(x2) == 1 -x2
ode3 = diff(x3) == 1 -x3
ode4 = diff(x4) == 1 -x4
ode5 = diff(x5) == 2 -x5
ode6 = diff(x6) == 2 -x6

cond1 = x1(0) == 25/14;
cond2 = x2(0) == 27/14;
cond3 = x3(0) == 21/14;
cond4 = x4(0) == 17/14;
cond5 = x5(0) == 15/14;
cond6 = x6(0) == 21/14;

odes = [ode1; ode2; ode3; ode4; ode5; ode6];
conds = [cond1; cond2; cond3; cond4; cond5; cond6];

S = dsolve(odes,conds)
x1Sol(t) = S.x1
x2Sol(t) = S.x2
x3Sol(t) = S.x3
x4Sol(t) = S.x4
x5Sol(t) = S.x5
x6Sol(t) = S.x6
