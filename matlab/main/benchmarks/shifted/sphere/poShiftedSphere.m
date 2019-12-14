function y = poShiftedSphere(X)
% Benchmark Function: Shifted Sphere.
%
% Input ->
%   X : Population, specified as a matrix whose row and column size
%       equal function dimension and population size, respectively.
%       Each column of X denotes an independent individual in the population.
% Output <-
%   y : Fitness, specified as a row vector whose length is population size.
%       Each element of y is the fitness of each individual (column) of X.
persistent poShiftVector;
[funcDim, popSize] = size(X);
if isempty(poShiftVector) || any(size(poShiftVector) ~= [funcDim popSize])
    poShiftVector = poLoadShiftVector('poSphere', funcDim);
    poShiftVector = repmat(poShiftVector, 1, popSize);
end
y = poSphere(X - poShiftVector);
end
