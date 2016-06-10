syms x;
ezplot(x*x);
hold on;
ezplot(x+6);
result_x = solve(x*x == x+6)
result_y = result_x + 6