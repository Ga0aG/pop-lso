function TF = poIsMatrixEquality(A, B, tol)
% Determine matrix equality within the toleration.
%
% Input ->
%   A   : Input to be compared, specified as a matrix.
%   B   : Input to be compared, specified as a matrix.
%   tol : Comparison tolerance, specified as a non-negative scalar.
%         If no value is specified, then the default is 1e-12.
% Output <-
%   TF : Returns logical 1 (true) if A and B are equal within the toleration.
%        Otherwise, it returns logical 0 (false).
if any(size(A) ~= size(B))
    error('`size(A)` should equal `size(B)`.');
end

if nargin < 3
    tol = 1e-12;
end
if ~poIsNonNegativeScalar(tol)
    error('the input `tol` should be a non-negative scalar.');
end

TF = abs(A - B) <= tol;
TF = all(TF(:));
end
