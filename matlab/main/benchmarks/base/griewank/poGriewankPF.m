function y = poGriewankPF(X)
% Benchmark Function: Griewank.
%
% Input ->
%   X : Population, specified as a matrix whose row and column size
%       equal population size (P) and function dimension (F), respectively.
%       Each row of X denotes an independent individual in the population.
% Output <-
%   y : Fitness, specified as a column vector whose length is population size.
%       Each element of y is the fitness of each individual (row) of X.
[popSize, funcDim] = size(X);
A = repmat((1 : funcDim) .^ 0.5, popSize, 1);
y = 1 / 4000 * sum(X .^ 2, 2) - prod(cos(X ./ A), 2) + 1;
end
