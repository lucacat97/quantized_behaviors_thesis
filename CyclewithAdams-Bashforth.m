% Dynamics on Cycle with Adams-Bashforth 
[A,G] = directed_cycle(6)
x0 = [0 1 2 3 2 1];

X = solve_dynamics_adams_bashforth(10,10^-2,A,x0);


function[A,G] = directed_cycle(n)
A = zeros(n,n);
A = diag(ones(n-1,1),1);
A(n,1)=1; 
G = digraph(A);
p = plot(G)

end