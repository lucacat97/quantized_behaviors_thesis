% Ex 4 Abelson


A = [0 2 4 4; 2 0 2 0; 4 0 0 0; 4 2 0 0]
D = A*ones(4,1);
L = D-A; 
init_conditions = [0 0 5 0]';
T = 15; 
h = 10^-2;
N = size(A,1);
n = T/h; 
X = zeros(N,n ); 

X(:,1) = init_conditions;


 
% implementation of Explicit Euler method

for i = 1:n-1
    f = -L*X(:,i);
    X(:,i+1) = X(:,i) + h*f;
end

N = size(X,1)
t = size(X,2)

figure
for i=1:N 
plot(linspace(0,T,t),X(i,:),'linewidth',1.7);
hold on
end 
title('Abelson Dynamics on Graph')
legend('Node 1','Node 2','Node 3','Node 4')
xlabel('time $t$','Interpreter','latex')
ylabel('Opinion $x(t)$','Interpreter','latex')


% Ex 4 Abelson Periodic: 


A = [0 1 0 0; 0 0 1 0; 0 0 0 1; 1 0 0 0]
D = A*ones(4,1);
L = diag(D)-A; 
init_conditions = [0 0 5 0]';
T = 15; 
h = 10^-2;
N = size(A,1);
n = T/h; 
X = zeros(N,n ); 

X(:,1) = init_conditions;


 
% implementation of Explicit Euler method

for i = 1:n-1
    f = -L*X(:,i);
    X(:,i+1) = X(:,i) + h*f;
end

N = size(X,1)
t = size(X,2)

figure
for i=1:N 
plot(linspace(0,T,t),X(i,:),'linewidth',1.7);
hold on
end 
title('Abelson Dynamics on Graph')
legend('Node 1','Node 2','Node 3','Node 4')
xlabel('time $t$','Interpreter','latex')
ylabel('Opinion $x(t)$','Interpreter','latex')


% Abelson on not quasi-strongly connected graph


A = zeros(6,6);
A(1,2)=1;
A(1,4)=1;
A(3,2)=1;
A(3,5)=1;
A(6,2)=1;
A(4,5)=1;
G = digraph(A);
plot(G)
D = A*ones(6,1);
L = diag(D)-A; 
init_conditions = [1 2 3 4 5 6]';
T = 15; 
h = 10^-2;
N = size(A,1);
n = T/h; 
X = zeros(N,n ); 

X(:,1) = init_conditions;


 
% implementation of Explicit Euler method

for i = 1:n-1
    f = -L*X(:,i);
    X(:,i+1) = X(:,i) + h*f;
end

N = size(X,1)
t = size(X,2)

figure
for i=1:N 
plot(linspace(0,T,t),X(i,:),'linewidth',1.7);
hold on
end 
title('Abelson Dynamics on non quasi strongly connected Graph')
legend('Node 1','Node 2','Node 3','Node 4','Node 5','Node 6')
xlabel('time $t$','Interpreter','latex')
ylabel('Opinion $x(t)$','Interpreter','latex')


% Abelson on not quasi-strongly connected graph
A = [0 1 1 ; 0 0 0; 0 0 0]



G = digraph(A);
plot(G)
D = A*ones(3,1);
L = diag(D)-A; 
init_conditions = [1 2 3]';
T = 15; 
h = 10^-2;
N = size(A,1);
n = T/h; 
X = zeros(N,n ); 

X(:,1) = init_conditions;


 
% implementation of Explicit Euler method

for i = 1:n-1
    f = -L*X(:,i);
    X(:,i+1) = X(:,i) + h*f;
end

N = size(X,1)
t = size(X,2)

figure
for i=1:N 
plot(linspace(0,T,t),X(i,:),'linewidth',1.7);
hold on
end 
title('Abelson Dynamics on non quasi strongly connected Graph')
legend('Node 1','Node 2','Node 3','Node 4','Node 5','Node 6')
xlabel('time $t$','Interpreter','latex')
ylabel('Opinion $x(t)$','Interpreter','latex')



%Taylor model Ex4.1 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

A = [0 2 4 4; 2 0 2 0; 4 0 0 0; 4 2 0 0]
B = [1 0 0 0;0 0 0 1]';
D = A*ones(4,1);
L = D-A; 
init_conditions = [0 0 5 0]';
T = 15; 
h = 10^-2;
N = size(A,1);
n = T/h; 
X = zeros(N,n ); 

X(:,1) = init_conditions;


 
% implementation of Explicit Euler method
s = [0 1]';
for i = 1:n-1
    f = -L*X(:,i)+B*s-B*ones(2,1).*X(:,i);
    X(:,i+1) = X(:,i) + h*f;
end

N = size(X,1)
t = size(X,2)

figure
for i=1:N 
plot(linspace(0,T,t),X(i,:),'linewidth',1.7);
hold on
end 
title('Taylor Dynamics on Graph: Introduction of Communication Sources')
legend('Node 1','Node 2','Node 3','Node 4')
xlabel('time $t$','Interpreter','latex')
ylabel('Opinion $x(t)$','Interpreter','latex')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

A = [0 1 0 0; 0 0 1 0; 0 0 0 1; 1 0 0 0]
D = A*ones(4,1);
B = [1 0 0 0; 0 0 1 0]';
L = diag(D)-A; 
init_conditions = [0 0 5 0]';
T = 15; 
h = 10^-2;
N = size(A,1);
n = T/h; 
X = zeros(N,n ); 
s = [0 1]';





% implementation of Explicit Euler method
s = [0 1]';
for i = 1:n-1
    f = -L*X(:,i)+B*s-B*ones(2,1).*X(:,i);
    X(:,i+1) = X(:,i) + h*f;
end

N = size(X,1)
t = size(X,2)

figure
for i=1:N 
plot(linspace(0,T,t),X(i,:),'linewidth',1.7);
hold on
end 
title('Taylor Dynamics on Graph: Introduction of Communication Sources')
legend('Node 1','Node 2','Node 3','Node 4')
xlabel('time $t$','Interpreter','latex')
ylabel('Opinion $x(t)$','Interpreter','latex')
