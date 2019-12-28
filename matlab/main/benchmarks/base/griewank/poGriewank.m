function y = poGriewank(X)
% Benchmark Function: Griewank.
%
% Input ->
%   X : Population, specified as a matrix whose row and column size
%       equal function dimension (F) and population size (P), respectively.
%       Each column of X denotes an independent individual in the population.
% Output <-
%   y : Fitness, specified as a row vector whose length is population size.
%       Each element of y is the fitness of each individual (column) of X.
[funcDim, popSize] = size(X);
A = repmat(((1 : funcDim) .^ 0.5)', 1, popSize);
y = 1 / 4000 * sum(X .^ 2, 1) - prod(cos(X ./ A), 1) + 1;
end
