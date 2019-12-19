function y = poEllipsoid(X)
% Benchmark Function: Ellipsoid.
%
% Input ->
%   X : Population, specified as a matrix whose row and column size
%       equal function dimension (F) and population size (P), respectively.
%       Each column of X denotes an independent individual in the population.
% Output <-
%   y : Fitness, specified as a row vector whose length is population size.
%       Each element of y is the fitness of each individual (column) of X.
funcDim = size(X, 1) - 1;
if funcDim < 1
    error('`size(X, 1)` should be greater than 1.');
end
expo = 10 .^ (6 * (0 : funcDim) / funcDim);
y = expo * (X .^ 2);
end
