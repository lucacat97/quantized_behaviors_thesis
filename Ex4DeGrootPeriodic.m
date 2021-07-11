


W = [0 1 0 0; 0 0 1 0; 0 0 0 1; 1 0 0 0]
x_0 = [0 0 5 0]

x = zeros(4,50)
x(:,1)=x_0';

for i=1:99
    x(:,i+1) = W*x(:,i);
end 

figure;
for i=1:4
    hold on
plot([1:100],x(i,:))
end 
title('Example of DeGroot Dynamics') 
xlabel('time $k$','Interpreter','latex')
ylabel('Opinion $x(k)$','Interpreter','latex')
axis([0 50 -1 6]) 