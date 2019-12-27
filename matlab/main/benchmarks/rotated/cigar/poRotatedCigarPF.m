function y = poRotatedCigarPF(X)
% Benchmark Function: Rotated Cigar.
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
persistent poRotationMatrix;
if isempty(poRotationMatrix) || any(size(poRotationMatrix) ~= [funcDim funcDim])
    poRotationMatrix = poLoadRotationMatrix('poCigar', funcDim);
end
y = poCigarPF(X * poRotationMatrix');
end
