


[A,G] = complete_graph(6)
X = solve_dynamics(1,1e-2,A)

figure; 

s1 = subplot(2,2,1)
s1.Position = s1.Position + [0 0 0.1 0];
X = solve_dynamics(2,1e-3,A)
title('Quantized Dynamics on Complete Graph')
xlabel('time $t$','Interpreter','latex')
ylabel('state $x(t)$','Interpreter','latex')
legend('Node 1','Node 2','Node 3','Node 4','Node 5','Node 6')

s2 = subplot(2,2,3)
s2.Position = s2.Position + [0 0 0.1 0];
plot_quantized(2,1e-3,X)
xlabel('time $t$','Interpreter','latex')
ylabel('quantized $q(t)$','Interpreter','latex')


s3 = subplot(2,2,[2 4])
s3.Position = s3.Position + [-0.0015 0 0.01 0];
plot(G,'edgecolor','k','nodecolor','k','Layout','auto')
title('Graph Topology')

function[A,G] = complete_graph(n)        

% n is the number of nodes 
% A is the Adhacency Matrix
% V is the number of vertices
A = ones(n,n)-diag(ones(n,1));
V = 1:1:n;
G = graph(A)
p = plot(G)
end 