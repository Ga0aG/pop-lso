function poShiftVector = poLoadShiftVector(name, dimension)
% Load the shift vector saved in the txt file.
%
% Input ->
%   name      : problem name, specified as a character vector or a string scalar.
%   dimension : problem dimension, specified as a positive integer scalar.
% Output <-
%   poShiftVector : shift vector, specified as a column vector.
dataPath = sprintf('./poInputData/poShiftVector-%s-D%d.txt', name, dimension);
if ~exist(dataPath, 'file')
    error('cannot load the data file, which should be located in %s.', dataPath);
end

poShiftVector = load(dataPath);
if any(size(poShiftVector) ~= [dimension 1])
    error('`size(poShiftVector)` should equal `[%d 1]`.', dimension);
end
end
