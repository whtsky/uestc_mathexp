x = 10 * rand(1, 10000);
y = 5 * rand(1, 10000);
plot(x, y);
num = length(find( y >= abs(3*sin(x))))