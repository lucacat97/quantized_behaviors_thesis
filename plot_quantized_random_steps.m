function[N] = plot_quantized_random_steps(cum_times,X)

N = size(X,1);


q = @(x) floor(x+0.5)



for i=1:N 
plot(cum_times,q(X(i,:)));
hold on
end 
end