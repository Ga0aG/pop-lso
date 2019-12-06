function TF = poIsColumnVector(A, n)
% Determine whether input is a column vector with the given length.
%
% Input ->
%   A : Input array, specified as a scalar, vector, matrix, or multidimensional array.
%   n : vector length, specified as a positive integer scalar.
%       If no value is specified, do not check whether the length is satisfied.
% Output <-
%   TF : Returns logical 1 (true) if A is a column vector (if given, with length n).
%        Otherwise, it returns logical 0 (false).
TF = iscolumn(A) && ...
    isnumeric(A) && ...
    all(~isnan(A)) && ...
    all(~isinf(A));
if nargin == 2
    if ~poIsPositiveIntegerScalar(n)
        error('the input `n` should be a positive integer scalar.');
    end
    TF = TF && (numel(A) == n);
end
end
