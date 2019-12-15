function poRotationMatrix = poLoadRotationMatrix(name, dimension)
% Load the rotation matrix saved in the txt file.
%
% Input ->
%   name      : problem name, specified as a character vector or a string scalar.
%   dimension : problem dimension, specified as a positive integer scalar.
% Output <-
%   poRotationMatrix : rotation matrix, specified as a dimension-by-dimension matrix.
dataPath = sprintf('./poInputData/poRotationMatrix-%s-D%d.txt', name, dimension);
if ~exist(dataPath, 'file')
    error('cannot load the data file, which should be located in %s.', dataPath);
end

poRotationMatrix = load(dataPath);
if any(size(poRotationMatrix) ~= [dimension dimension])
    error('`size(poRotationMatrix)` should equal `[%d %d]`.', dimension, dimension);
end
end
