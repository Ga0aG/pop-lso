function A = poRowVector2ColumnVector(A)
% Convert a row vector to a column vector.
%
% Input ->
%   A : Input array, specified as a scalar, vector, matrix, or multidimensional array.
% Output <-
%   A : when A is a row vector, transpose it to a column vector.
%       Otherwise, returns A directly (without any changes).
if isnumeric(A) && isrow(A)
    A = A';
end
end
