function f = rastrigin(x)
    A = 10;
    f = A * length(x) + sum(x.^2 - A * cos(2 * pi * x));
end