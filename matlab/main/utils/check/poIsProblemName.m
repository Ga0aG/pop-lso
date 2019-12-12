function TF = poIsProblemName(A)
% Determine whether input is the problem name.
%
% Input ->
%   A : Input array, specified as a scalar, vector, matrix, or multidimensional array.
% Output <-
%   TF : Returns logical 1 (ture) if input is the problem name.
%        Otherwise, it returns logical 0 (false).
if ischar(A) && isrow(A)
    TF = true;
else
    if isscalar(A) && isstring(A)
        TF = true;
    else
        TF = false;
    end
end
end
