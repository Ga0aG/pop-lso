function y = poAckley(X)
% Benchmark Function: Ackley.
%
% Input ->
%   X : Population, specified as a matrix whose row and column size
%       equal function dimension (F) and population size (P), respectively.
%       Each column of X denotes an independent individual in the population.
% Output <-
%   y : Fitness, specified as a row vector whose length is population size.
%       Each element of y is the fitness of each individual (column) of X.
funcDim = size(X, 1);
y = -20 * exp(-0.2 * (1 / funcDim * sum(X .^ 2, 1)) .^ 0.5) - ...
    exp(1 / funcDim * sum(cos(2 * pi * X), 1)) + 20 + exp(1);
end
