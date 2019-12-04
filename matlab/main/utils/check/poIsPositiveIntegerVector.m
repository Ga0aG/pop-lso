function TF = poIsPositiveIntegerVector(A)
% Determine whether input is a positive integer vector.
%
% Input ->
%   A : Input array, specified as a scalar, vector, matrix, or multidimensional array.
% Output <-
%   TF : Returns logical 1 (true) if A is a positive integer vector.
%        Otherwise, it returns logical 0 (false).
TF = poIsIntegerVector(A) && all(A > 0);
end
