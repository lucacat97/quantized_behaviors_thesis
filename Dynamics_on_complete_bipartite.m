


A = complete_bipartite(7,5,2)
solve_dynamics(2,1e-2,A)


function[A] = complete_bipartite(n,n1,n2)
% n1 number of nodes in first set of partition
% n2 number of nodes in second set of partition
if  n1+n2 ~= n
    err('wrong partition')
end
A = zeros(n,n);
A(n1+1:n,1:n1)=ones(n-n1,n1)
A(1:n1,n1+1:n)=ones(n1,n-n1)
V = 1:1:n;
G = graph(A)
p = plot(G)

end