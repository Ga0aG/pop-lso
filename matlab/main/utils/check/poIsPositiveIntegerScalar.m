function TF = poIsPositiveIntegerScalar(A)
% Determine whether input is a positive integer scalar.
%
% Input ->
%   A : Input array, specified as a scalar, vector, matrix, or multidimensional array.
% Output <-
%   TF : Returns logical 1 (true) if A is a positive integer scalar.
%        Otherwise, it returns logical 0 (false).
TF = poIsIntegerScalar(A) && (A > 0);
end
