function TF = poIsIntegerScalar(A)
% Determine whether input is an integer scalar.
%
% Input ->
%   A : Input array, specified as a scalar, vector, matrix, or multidimensional array.
% Output <-
%   TF : Returns logical 1 (true) if A is an integer scalar.
%        Otherwise, it returns logical 0 (false).
TF = isscalar(A) && ...
    isnumeric(A) && ...
    ~isinf(A) && ...
    (floor(A) == A) && (A == ceil(A));
end
