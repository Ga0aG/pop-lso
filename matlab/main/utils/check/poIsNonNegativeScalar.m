function TF = poIsNonNegativeScalar(A)
% Determine whether input is a non-negative scalar.
%
% Input ->
%   A : Input array, specified as a scalar, vector, matrix, or multidimensional array.
% Output <-
%   TF : Returns logical 1 (true) if A is a non-negative scalar.
%        Otherwise, it returns logical 0 (false).
TF = isscalar(A) && ...
    isnumeric(A) && ...
    ~isinf(A) && ...
    (A >= 0);
end
