function TF = poIsOptimizerOptionsType(A)
% Determine whether input is the optimizer options type.
%
% Input ->
%   A : Input array, specified as a scalar, vector, matrix, or multidimensional array.
% Output <-
%   TF : Returns logical 1 (ture) if input is the optimizer options type.
%        Otherwise, it returns logical 0 (false).
TF = isscalar(A) && isstruct(A);
end
