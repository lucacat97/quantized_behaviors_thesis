N = 6; 
A = line(N)

% initial states 


 solve_dynamics(4,1e-2,A)

 
function[A,V] = line(n)        

% n is the number of nodes 
% A is the Adhacency Matrix
% V is the number of vertices

A = zeros(n,n);
for i=1:n
    for j=1:n
        if abs(i-j)==1
            A(i,j)=1
        end
    end
end
V = 1:1:n;
 G = graph(A)
 %p = plot(G)
 

end 





