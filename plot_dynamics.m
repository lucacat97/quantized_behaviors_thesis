function[X] = plot_dynamics(X)

N = size(X,1)
t = size(X,2)

figure
for i=1:N 
plot(t,X(i,:));
hold on
end 

end
