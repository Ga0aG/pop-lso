function TF = poIsIntegerVector(A)
% Determine whether input is an integer vector.
%
% Input ->
%   A : Input array, specified as a scalar, vector, matrix, or multidimensional array.
% Output <-
%   TF : Returns logical 1 (true) if A is an integer vector.
%        Otherwise, it returns logical 0 (false).
TF = true;
if ~isvector(A)
    TF = false;
    return;
end

for i = 1 : numel(A)
    if ~poIsIntegerScalar(A(i))
        TF = false;
        break;
    end
end
end
