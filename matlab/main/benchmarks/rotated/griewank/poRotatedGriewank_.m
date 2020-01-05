function y = poRotatedGriewank_(x)
% Benchmark Function: Rotated Griewank.
%
% Input ->
%   x : An individual, specified as a vector.
%       Support both the row and column vector.
%       Not accept as input the population whose size is greater than 1.
% Output <-
%   y : Fitness, specified as a scalar.
if ~isvector(x)
    error('the input should be a vector.');
end
if isrow(x)
    x = x';
end
persistent poRotationMatrix;
funcDim = numel(x);
if isempty(poRotationMatrix) || any(size(poRotationMatrix) ~= [funcDim funcDim])
    poRotationMatrix = poLoadRotationMatrix('poGriewank', funcDim);
end
y = poGriewank_(poRotationMatrix * x);
end
