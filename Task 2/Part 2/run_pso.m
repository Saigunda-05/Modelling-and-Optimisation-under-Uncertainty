function [best_solution, best_fval] = run_pso(optimization_function, D)
    % PSO parameters
    swarm_size = 50;        % Swarm size (number of particles)
    max_iter = 100;         % Maximum number of iterations
    lb = -ones(1, D);       % Lower bounds for the search space
    ub = ones(1, D);        % Upper bounds for the search space
    
    % Run Particle Swarm Optimization
    pso_options = optimoptions(@particleswarm, 'SwarmSize', swarm_size, 'MaxIterations', max_iter, 'Display', 'off');
    [best_solution, best_fval] = particleswarm(optimization_function, D, lb, ub, pso_options);
end