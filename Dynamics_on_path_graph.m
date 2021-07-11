% Dynamics on Path and Distance |x_j-x_i|  (maximum consensus distance)
N =6
[A,G] = path(N)


figure; 

s1 = subplot(2,2,1)
s1.Position = s1.Position + [0 0 0.1 0];
X = solve_dynamics(4,1e-3,A)
title('Quantized Dynamics on Path Graph')
xlabel('time $t$','Interpreter','latex')
ylabel('state $x(t)$','Interpreter','latex')
legend('Node 1','Node 2','Node 3','Node 4','Node 5','Node 6')

s2 = subplot(2,2,3)
s2.Position = s2.Position + [0 0 0.1 0];
plot_quantized(4,1e-3,X)
xlabel('time $t$','Interpreter','latex')
ylabel('quantized $q(t)$','Interpreter','latex')


s3 = subplot(2,2,[2 4])
s3.Position = s3.Position + [0.1 0 -0.15 0];
plot(G,'edgecolor','k','nodecolor','k','Layout','auto')
title('Graph Topology')

consensus_distance = abs(max(X(:,end))-min(X(:,end)))



function[A,G] = path(n)
A = zeros(n,n);
A = diag(ones(n-1,1),1)+diag(ones(n-1,1),-1);
G = graph(A);
p = plot(G)
end