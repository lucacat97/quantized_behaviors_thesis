function[X] = solve_dynamics(T,h,A,init_conditions)
N = size(A,1);
n = T/h; 
X = zeros(N,n ); 
rng(2021)

if nargin ==4 
 X(:,1) = init_conditions
 disp('non random')
else
X(:,1) = 10*rand(N,1);  % initial conditions in range (0,10)
disp('random')
end

d = A*ones(N,1)
D = diag(d)
 
% implementation of Explicit Euler method

for i = 1:n-1
    f = -D*X(:,i)+A*floor((X(:,i))+0.5);
    X(:,i+1) = X(:,i) + h*f;
end

t = linspace(0,T,n);

for i=1:N 
p = plot(t,X(i,:));
hold on
end 

end

