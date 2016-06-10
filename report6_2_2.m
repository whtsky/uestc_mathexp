syms x;
y = 6 + x - x*x;
int(y, x, -2, 3)

randX = 5*rand(1, 10000) - 2;
randY = 9*rand(1, 10000);
w = find(randX.^2 < randY & randY < randX+6);
length(w)/10000*5*9