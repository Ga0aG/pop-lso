function y = poShiftedCigar_(x)
% Benchmark Function: Shifted Cigar.
%
% Input ->
%   x : An individual, specified as a vector.
%       Support both the row and column vector.
%       Not accept as input the population whose size is greater than 1.
if ~isvector(x)
    error('the input should be a vector.');
end
persistent poShiftVector;
funcDim = numel(x);
if funcDim < 2
    error('`numel(x)` should be greater than 1.');
end
if isempty(poShiftVector) ||  any(size(poShiftVector) ~= size(x))
    poShiftVector = poLoadShiftVector('poCigar', funcDim);
    if isrow(x)
        poShiftVector = poShiftVector';
    end
end
y = poCigar_(x - poShiftVector);
end
