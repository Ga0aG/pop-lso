function y = poRotatedShiftedSphere_(x)
% Benchmark Function: Rotated Shifted Sphere.
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

persistent poRotationMatrix poShiftVector;
funcDim = numel(x);
if isempty(poRotationMatrix) || any(size(poRotationMatrix) ~= [funcDim funcDim])
    poRotationMatrix = poLoadRotationMatrix('poSphere', funcDim);
end
if isempty(poShiftVector) || any(size(poShiftVector) ~= size(x))
    poShiftVector = poLoadShiftVector('poSphere', numel(x));
    if isrow(x)
        poShiftVector = poShiftVector';
    end
end

y = poSphere_(poRotationMatrix * (x - poShiftVector));
end
