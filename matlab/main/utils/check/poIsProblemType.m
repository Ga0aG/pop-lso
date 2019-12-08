function TF = poIsProblemType(A)
% Determine whether input is the problem type.
%
% Input ->
%   A : Input array, specified as a scalar, vector, matrix, or multidimensional array.
% Output <-
%   TF : Returns logical 1 (ture) if input is the problem type.
%        Otherwise, it returns logical 0 (false).
TF = isscalar(A) && isstruct(A);
end
