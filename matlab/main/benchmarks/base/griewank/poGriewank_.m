function y = poGriewank_(x)
% Benchmark Function: Griewank.
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
A = (1 : funcDim) .^ 0.5;
if iscolumn(x)
    A = A';
end
y = 1 / 4000 * sum(x .^ 2) - prod(cos(x ./ A)) + 1;
end
