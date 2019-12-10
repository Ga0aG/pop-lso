function A = poScalar2ColumnVector(A, n)
% Convert a scalar to a column vector.
%
% Input ->
%   A : Input array, specified as a scalar, vector, matrix, or multidimensional array.
%   n : Number of times to repeat the scalar in the row dimensions,
%       specified as a positive integer scalar.
% Output <-
%   A : when A is a scalar, returns a column vector of length n, each element of which is A.
%       Otherwise, returns A directly (without any changes).
if ~poIsPositiveIntegerScalar(n)
    error('the input `n` should be a positive integer scalar.');
end

if isscalar(A) && isnumeric(A)
    A = repmat(A, n, 1);
end
end
