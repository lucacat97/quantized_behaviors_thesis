% Ora la facciamo con passo  Random
[A,G] = directed_cycle(6)
x0 = [0 1 2 3 2 1];

figure; 

s1 = subplot(2,2,1)
s1.Position = s1.Position + [0 0 0.1 0];
[X,T,cum_times] = solve_dynamics_random_step(A,x0,15000);
title('Quantized Dynamics on Directed Cycle')
xlabel('time $t$','Interpreter','latex')
ylabel('state $x(t)$','Interpreter','latex')
legend('Node 1','Node 2','Node 3','Node 4','Node 5','Node 6')

s2 = subplot(2,2,3)
s2.Position = s2.Position + [0 0 0.1 0];
plot_quantized_random_steps(cum_times,X)
xlabel('time $t$','Interpreter','latex')
ylabel('quantized $q(t)$','Interpreter','latex')


s3 = subplot(2,2,[2 4])
s3.Position = s3.Position + [0.0001 0 -0.005 0];
plot(G,'edgecolor','k','nodecolor','k','Layout','auto')
title('Graph Topology')


function[A,G] = directed_cycle(n)
A = zeros(n,n);
A = diag(ones(n-1,1),1);
A(n,1)=1; 
G = digraph(A);
p = plot(G)

end