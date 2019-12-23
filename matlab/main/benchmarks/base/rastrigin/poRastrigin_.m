function y = poRastrigin_(x)
% Benchmark Function: Rastrigin.
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
funcDim = numel(x);
y = 10 * funcDim + sum(x .^ 2 - 10 * cos(2 * pi * x));
end
