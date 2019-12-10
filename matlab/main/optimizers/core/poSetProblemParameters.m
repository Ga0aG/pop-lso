function problemParameters = poSetProblemParameters(name, dimension, ...
    upperBounds, lowerBounds, ...
    initialUpperBounds, initialLowerBounds, ...
    optimalSolution, optimalFitness)
% Set Problem Parameters.
%
% Input ->
%   name               : problem name, specified as a character vector or a string scalar.
%   dimension          : problem dimension, specified as a positive integer scalar.
%   upperBounds        : upper bounds for all individuals during search,
%                        specified as a column vector of length dimension.
%   lowerBounds        : lower bounds for all individuals during search,
%                        specified as a column vector of length dimension.
%                        If no value is specified, then the default is `-upperBounds`.
%   initialUpperBounds : initial upper bounds for all individuals when starting search,
%                        specified as a column vector of length dimension.
%                        If no value is specified, then the default is `upperBounds`.
%   initialLowerBounds : initial lower bounds for all individuals when starting search,
%                        specified as a column vector of length dimension.
%                        If no value is specified, then the default is `lowerBounds`.
%   optimalSolution    : optimal solution, specified as a column vector of length dimension.
%                        If no value is specified, then the default is `NaN(dimension, 1)`.
%   optimalFitness     : optimal fitness, specified as a scalar.
%                        If no value is specified, then the default is `NaN`.
% Output <-
%   problemParameters : problem parameters, specified as a structure scalar.
if ~poIsPositiveIntegerScalar(dimension)
    error('the input `dimension` should be a positive integer scalar.');
end

switch nargin
    case 8
    case 7
        error('set `optimalSolution` and `optimalFitness` simultaneously.');
    case 6
        optimalSolution = NaN(dimension, 1);
        optimalFitness = NaN;
    case 5
        initialLowerBounds = lowerBounds;
        optimalSolution = NaN(dimension, 1);
        optimalFitness = NaN;
    case 4
        initialUpperBounds = upperBounds;
        initialLowerBounds = lowerBounds;
        optimalSolution = NaN(dimension, 1);
        optimalFitness = NaN;
    case 3
        lowerBounds = -upperBounds;
        initialUpperBounds = upperBounds;
        initialLowerBounds = lowerBounds;
        optimalSolution = NaN(dimension, 1);
        optimalFitness = NaN;
    otherwise
        error('set at least three inputs: `name`, `dimension`, and `upperBounds`.');
end

% when `upperBounds` is a scalar, it should be greater than 0
if (nargin == 3) && isscalar(upperBounds) && isnumeric(upperBounds)
    if upperBounds <= 0
        error('the input `upperBounds` should be greater than 0, when set to a scalar.');
    end
end

% convert a scalar to a column vector, if necessary
upperBounds = poScalar2ColumnVector(upperBounds, dimension);
lowerBounds = poScalar2ColumnVector(lowerBounds, dimension);
initialUpperBounds = poScalar2ColumnVector(initialUpperBounds, dimension);
initialLowerBounds = poScalar2ColumnVector(initialLowerBounds, dimension);

% convert a row vector to column vector, if necessary
upperBounds = poRowVector2ColumnVector(upperBounds);
lowerBounds = poRowVector2ColumnVector(lowerBounds);
initialUpperBounds = poRowVector2ColumnVector(initialUpperBounds);
initialLowerBounds = poRowVector2ColumnVector(initialLowerBounds);

problemParameters = struct('name', name, 'dimension', dimension, ...
    'upperBounds', upperBounds, 'lowerBounds', lowerBounds, ...
    'initialUpperBounds', initialUpperBounds, 'initialLowerBounds', initialLowerBounds, ...
    'optimalSolution', optimalSolution, 'optimalFitness', optimalFitness);
poCheckProblemParameters(problemParameters);
end
