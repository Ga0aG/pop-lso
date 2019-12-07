function poCheckSearchBounds(dimension, ...
    upperBounds, lowerBounds, ...
    initialUpperBounds, initialLowerBounds)
% Check whether all search bounds are set properly.
%
% Input ->
%   dimension          : function dimension, specified as a positive integer scalar.
%   upperBounds        : upper bounds for all individuals during search,
%                        specified as a column vector of length dimension.
%   lowerBounds        : lower bounds for all individuals during search,
%                        specified as a column vector of length dimension.
%   initialUpperBounds : initial upper bounds for all individuals when starting search,
%                        specified as a column vector of length dimension.
%   initialLowerBounds : initial lower bounds for all individuals when starting search,
%                        specified as a column vector of length dimension.
if ~poIsPositiveIntegerScalar(dimension)
    error('the input `dimension` should be a positive integer scalar.');
end

if ~poIsColumnVector(upperBounds, dimension)
    error('the input `upperBounds` should be a column vector of length `dimension`.');
end
if ~poIsColumnVector(lowerBounds, dimension)
    error('the input `lowerBounds` should be a column vector of length `dimension`.');
end
if ~poIsColumnVector(initialUpperBounds, dimension)
    error('the input `initialUpperBounds` should be a column vector of length `dimension`.');
end
if ~poIsColumnVector(initialLowerBounds, dimension)
    error('the input `initialLowerBounds` should be a column vector of length `dimension`.');
end

if any(upperBounds <= lowerBounds)
    error('`upperBounds` should be greater than `lowerBounds`.');
end
if any(initialUpperBounds <= initialLowerBounds)
    error('`initialUpperBounds` should be greater than `initialLowerBounds`.');
end
if any(upperBounds < initialUpperBounds)
    error('`initialUpperBounds` should be less than or equal to `upperBounds`.');
end
if any(initialLowerBounds < lowerBounds)
    error('`initialLowerBounds` should be greater than or equal to `lowerBounds`.');
end
end
