function y = poRastriginPF(X)
% Benchmark Function: Rastrigin.
%
% Input ->
%   X : Population, specified as a matrix whose row and column size
%       equal population size (P) and function dimension (F), respectively.
%       Each row of X denotes an independent individual in the population.
% Output <-
%   y : Fitness, specified as a column vector whose length is population size.
%       Each element of y is the fitness of each individual (row) of X.
funcDim = size(X, 2);
y = 10 * funcDim + sum(X .^ 2 - 10 * cos(2 * pi * X), 2);
end
