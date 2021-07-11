function[X,T,cum_times] = solve_dynamics_random_step(A,init_conditions,n_steps)
N = size(A,1);
times = rand(n_steps,1)/1000;
T = sum(times);
cum_times = cumsum(times);
rng(2021);

if nargin ==3
 X(:,1) = init_conditions
 disp('non random')
else
X(:,1) = 10*rand(N,1);  % initial conditions in range (0,10)
disp('random')
end

d = A*ones(N,1)
D = diag(d)
 
% implementation of Explicit Euler method

for i = 1:n_steps-1
    f = -D*X(:,i)+A*floor((X(:,i))+0.5);
    X(:,i+1) = X(:,i) + times(i)*f;
end



for i=1:N 
p = plot(cum_times,X(i,:));
hold on
end 

end
