function [best_solution, best_fval] = run_ga(optimization_function, D)
    % GA parameters
    max_gen = 100;          % Maximum number of generations
    pop_size = 50;          % Population size
    lb = -ones(1, D);       % Lower bounds for the search space
    ub = ones(1, D);        % Upper bounds for the search space
    
    % Run Genetic Algorithm
    ga_options = optimoptions(@ga, 'MaxGenerations', max_gen, 'PopulationSize', pop_size, 'Display', 'off');
    [best_solution, best_fval] = ga(optimization_function, D, [], [], [], [], lb, ub, [], ga_options);
end