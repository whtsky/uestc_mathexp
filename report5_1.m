f = [-2.5; -5; -10];
b = [-50; 0];
A = [-2.5 -5 -10; -2 -2 1];
Aeq = [1 1 1];
beq = 100;
lb = [10 0 20];
ub = [30 90 80];
[x, fMax] = linprog(f, A, b, Aeq, beq, lb, ub)