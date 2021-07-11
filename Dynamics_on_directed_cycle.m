




[A,G] = directed_cycle(24)
x0 = [1,1,1,1,7,7,7,7,3,3,3,3,8,8,8,8,2,2,2,2,4,4,4,4];

figure; 

s1 = subplot(2,2,1)
s1.Position = s1.Position + [0 0 0.1 0];
X = solve_dynamics(20,1e-3,A,x0)
title('Quantized Dynamics on Directed Cycle')
xlabel('time $t$','Interpreter','latex')
ylabel('state $x(t)$','Interpreter','latex')
legend('Node 1','Node 2','Node 3','Node 4','Node 5','Node 6')

s2 = subplot(2,2,3)
s2.Position = s2.Position + [0 0 0.1 0];
plot_quantized(20,1e-3,X)
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


%%  Indagine, quando cambia la quantizzazione i=694  T=694*10^-3=0.694 s  %% 
% i=1
% while floor(X(:,i)+0.5)==floor(X(:,1)+0.5)
%     i = i+1;
% end
% 
% i1 = i+1;
% 
% floor(X(:,i1)+0.5)   %il primo stato è passato a 1
%                       %  1-e^-x >0.5
% i = i1;                     
% while floor(X(:,i)+0.5)==floor(X(:,i1)+0.5)
%     i = i+1;
% end
% i2=i+1;
% 
% while floor(X(:,i)+0.5)==floor(X(:,i2)+0.5)
%     i = i+1;
% end


% bisogna trovare due configurazioni in cui stato e quantizzati sono
% identici



% % Provo il calcolo simbolico con matlab 
% 
% syms x1 
% syms x2
% assume(x1 > 0)
% assume(x2 > 0)
% solve(1-exp(-x1)>0.5)
% solve(1-exp(-x2)>1.5)
% solve(1-exp(-x3)>2.5)
% solve(1-exp(-x4)>3.5)
% solve(1-exp(-x5)>2.5)
% solve(1-exp(-x6)>1.5)
% 


% x = X(:,8000)
% i = 8001;
% while   X(:,i)~=x
%     i = i+1; 
% end




