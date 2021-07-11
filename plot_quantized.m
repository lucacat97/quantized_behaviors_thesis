function[X] = plot_quantized(T,h,X)

N = size(X,1);
n = T/h; 

q = @(x) floor(x+0.5)

t = linspace(0,T,n);

for i=1:N 
plot(t,q(X(i,:)));
hold on
end 

