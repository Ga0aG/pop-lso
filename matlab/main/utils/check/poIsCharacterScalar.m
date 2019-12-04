function TF = poIsCharacterScalar(A)
% Determine whether input is a character scalar.
%
% Input ->
%   A : Input array, specified as a scalar, vector, matrix, or multidimensional array.
% Output <-
%   TF : Returns logical 1 (ture) if input is a character scalar.
%        Otherwise, it returns logical 0 (false).
TF = isscalar(A) && ischar(A);
end
