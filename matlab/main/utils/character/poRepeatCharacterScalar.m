function repChar = poRepeatCharacterScalar(n, A)
% Repeat copies of a character scalar.
%
% Input ->
%   n : Number of times to repeat the character scalar in the column dimensions,
%       specified as a positive integer scalar.
%       If no value is specified, then the default is 77.
%   A : The repeated character, specified as a character scalar.
%       If no value is specified, then the default is '#'.
% Output <-
%   repChar : a row vector containing n copies of A.
if nargin == 0
    n = 77;  % just preferred by the toolbox developer
    A = '#'; % just preferred by the toolbox developer
elseif nargin == 1
    A = '#';
end

if ~poIsCharacterScalar(A)
    error('the input `A` should be a character scalar.');
end

if ~poIsPositiveIntegerScalar(n)
    error('the input `n` should be a positive integer scalar.');
end

repChar = repmat(A, 1, n);
end
