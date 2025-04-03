function [best_solution, best_fval] = run_sa(optimization_function, D)
    % SA parameters
    max_iter = 100;         % Maximum number of iterations
    lb = -ones(1, D);       % Lower bounds for the search space
    ub = ones(1, D);        % Upper bounds for the search space
    
    % Run Simulated Annealing
    sa_options = optimoptions(@simulannealbnd, 'MaxIterations', max_iter, 'Display', 'off');
    [best_solution, best_fval] = simulannealbnd(optimization_function, zeros(1, D), lb, ub, sa_options);
end