function y = poShiftedGriewank_(x)
% Benchmark Function: Shifted Griewank.
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
if isempty(poShiftVector) || any(size(poShiftVector) ~= size(x))
    poShiftVector = poLoadShiftVector('poGriewank', numel(x));
    if isrow(x)
        poShiftVector = poShiftVector';
    end
end
y = poGriewank_(x - poShiftVector);
end
