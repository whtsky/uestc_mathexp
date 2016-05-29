x = 0.1;
b = [1; 1; 1];
delta = 0.00001
for r = 0.1: 0.00001:0.9
    A = [0 3*r 2*r; 0.4 0 0; 0 0.15 0];
    Z = abs(abs(eig(A)) - b);
    if Z(1) < delta || Z(2) < delta || Z(3) < delta
        x = r;
    end
end

x