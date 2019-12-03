function TF = poIsNonNegativeIntegerScalar(A)
% Determine whether input is a non-negative integer scalar.
%
% Input ->
%   A : Input array, specified as a scalar, vector, matrix, or multidimensional array.
% Output <-
%   TF : Returns logical 1 (true) if A is a non-negative integer scalar.
%        Otherwise, it returns logical 0 (false).
TF = poIsIntegerScalar(A) && (A >= 0);
end
