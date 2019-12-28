function y = poAckley_(x)
% Benchmark Function: Ackley.
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
y = -20 * exp(-0.2 * (1 / funcDim * sum(x .^ 2)) .^ 0.5) - ...
    exp(1 / funcDim * sum(cos(2 * pi * x))) + 20 + exp(1);
end
