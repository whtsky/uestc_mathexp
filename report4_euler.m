y(1) = 10;
for i = 1:10
    y(i+1) = y(i) + 0.2 * (0.02*(1-0.001*y(i))*y(i));
end
y