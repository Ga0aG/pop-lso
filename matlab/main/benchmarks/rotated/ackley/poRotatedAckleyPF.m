function y = poRotatedAckleyPF(X)
% Benchmark Function: Rotated Ackley.
%
% Input ->
%   X : Population, specified as a matrix whose row and column size
%       equal population size (P) and function dimension (F), respectively.
%       Each row of X denotes an independent individual in the population.
% Output <-
%   y : Fitness, specified as a column vector whose length is population size.
%       Each element of y is the fitness of each individual (row) of X.
persistent poRotationMatrix;
funcDim = size(X, 2);
if isempty(poRotationMatrix) || any(size(poRotationMatrix) ~= [funcDim funcDim])
    poRotationMatrix = poLoadRotationMatrix('poAckley', funcDim);
end
y = poAckleyPF(X * poRotationMatrix');
end
