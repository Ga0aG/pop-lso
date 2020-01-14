function X = poInitializePopulation(problemParameters, optimizerOptions)
% Initialize the Population.
%
% Input ->
%   problemParameters : problem parameters, specified as a structure scalar
%       with the following fields:
%       - dimension          : problem dimension, specified as a positive integer scalar.
%       - initialUpperBounds : initial upper bounds for all individuals when starting search,
%                              specified as a column vector of length dimension.
%       - initialLowerBounds : initial lower bounds for all individuals when starting search,
%                              specified as a column vector of length dimension.
%   optimizerOptions : optimizer options, specified as a structure scalar
%       with the following fields:
%       - populationSize    : population size, specified as a positive integer scalar.
%       - initialPopulation : initial population, specified as a `dimension`-by-`populationSize` matrix.
%       - seedPopulation    : seed of population initialization, specified as a nonnegative integer scalar.
% Output <-
%   X : initial population, specified as a `dimension`-by-`populationSize` matrix.
populationSize = optimizerOptions.populationSize;

dimension = problemParameters.dimension;
initialUpperBounds = repmat(problemParameters.initialUpperBounds, 1, populationSize);
initialLowerBounds = repmat(problemParameters.initialLowerBounds, 1, populationSize);

if ~isfield(optimizerOptions, 'initialPopulation') && ~isfield(optimizerOptions, 'seedPopulation')
    error('set at least one field (`initialPopulation` or `seedPopulation`) for `optimizerOptions`.');
end

if ~isfield(optimizerOptions, 'initialPopulation')
    seedPopulation = optimizerOptions.seedPopulation;
    if ~poIsNonNegativeIntegerScalar(seedPopulation)
        error('`seedPopulation` should be a nonnegative integer scalar.');
    end
    originalSeed = rng(seedPopulation);
    X = unifrnd(initialLowerBounds, initialUpperBounds);
    rng(originalSeed);
else
    X = optimizerOptions.initialPopulation;
    if ~isnumeric(X) || any(size(X) ~= [dimension populationSize])
        error('`X` should be a %d-by-%d matrix.', dimension, populationSize);
    end
    outUpperBounds = X > initialUpperBounds;
    if any(outUpperBounds(:))
        error('`X` should not be out of upper bounds.');
    end
    outLowerBounds = X < initialLowerBounds;
    if any(outLowerBounds(:))
        error('`X` should not be out of lower bounds.');
    end
end
end
