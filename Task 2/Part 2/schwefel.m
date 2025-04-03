function f = schwefel(x)
    f = 418.9829 * length(x) - sum(x .* sin(sqrt(abs(x))));
end