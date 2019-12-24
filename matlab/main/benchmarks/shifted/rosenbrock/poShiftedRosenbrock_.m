function y = poShiftedRosenbrock_(x)
% Benchmark Function: Shifted Rosenbrock.
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
persistent poShiftVector;
funcDim = numel(x);
if funcDim < 2
    error('`numel(x)` should be greater than 1.');
end
if isempty(poShiftVector) || any(size(poShiftVector) ~= size(x))
    poShiftVector = poLoadShiftVector('poRosenbrock', funcDim);
    if isrow(x)
        poShiftVector = poShiftVector';
    end
end
y = poRosenbrock_(x - poShiftVector);
end
