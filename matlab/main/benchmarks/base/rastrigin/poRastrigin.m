function y = poRastrigin(X)
% Benchmark Function: Rastrigin.
%
% Input ->
%   X : Population, specified as a matrix whose row and column size
%       equal function dimension (F) and population size (P), respectively.
%       Each column of X denotes an independent individual in the population.
% Output <-
%   y : Fitness, specified as a row vector whose length is population size.
%       Each element of y is the fitness of each individual (column) of X.
funcDim = size(X, 1);
y = 10 * funcDim + sum(X .^ 2 - 10 * cos(2 * pi * X), 1);
end