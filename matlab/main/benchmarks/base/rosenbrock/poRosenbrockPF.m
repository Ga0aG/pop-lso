function y = poRosenbrockPF(X)
% Benchmark Function: Rosenbrock.
%
% Input ->
%   X : Population, specified as a matrix whose row and column size
%       equal population size (P) and function dimension (F), respectively.
%       Each row of X denotes an independent individual in the population.
% Output <-
%   y : Fitness, specified as a column vector whose length is population size.
%       Each element of y is the fitness of each individual (row) of X.
funcDim = size(X, 2);
if funcDim < 2
    error('`size(X, 2)` should be greater than 1.');
end
funcDim = 1 : (funcDim - 1);
y = 100 * sum(((X(:, funcDim)) .^ 2 - X(:, funcDim + 1)) .^ 2, 2) + ...
    sum((X(:, funcDim) - 1) .^ 2, 2);
end
