function y = poDiscus_(x)
% Benchmark Function: Discus.
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
if funcDim < 2
    error('`numel(x)` should be greater than 1.');
end
y = 1e6 * x(1) ^ 2 + sum(x(2 : funcDim) .^ 2);
end
