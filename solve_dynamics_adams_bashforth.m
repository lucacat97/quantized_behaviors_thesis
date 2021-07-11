function[X] = solve_dynamics_adams_bashforth(T,h,A,init_conditions)
N = size(A,1);
n = T/h; 
X = zeros(N,n ); 
rng(2021)
X(:,1) = init_conditions;

if nargin ==4 
 X(:,1) = init_conditions
 disp('non random')
else
X(:,1) = 10*rand(N,1);  % initial conditions in range (0,10)
disp('random')
end

d = A*ones(N,1)
D = diag(d)
 
% implementation of Adams-Bashforth method
f= -D*X(:,1)+A*floor((X(:,1))+0.5)
X(:,2) = X(:,1)+h*f;
for i = 1:n-2
    f1 = -D*X(:,i)+A*floor((X(:,i))+0.5)
    f2 = -D*X(:,i+1)+A*floor((X(:,i+1))+0.5);
    X(:,i+2) = X(:,i+1) + h*(3/2*f2-1/2*f1);
end





t = linspace(0,T,n);

for i=1:N 
p = plot(t,X(i,:));
hold on
end 

end
