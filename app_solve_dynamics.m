function[X] = app_solve_dynamics(T,h,A,init_conditions)
N = size(A,1);
n = T/h; 
X = zeros(N,n ); 
rng(2021)
X(:,1) = init_conditions;

d = A*ones(N,1)
D = diag(d)
 
% implementation of Explicit Euler method

for i = 1:n-1
    f = -D*X(:,i)+A*floor((X(:,i))+0.5);
    X(:,i+1) = X(:,i) + h*f;
end

end



