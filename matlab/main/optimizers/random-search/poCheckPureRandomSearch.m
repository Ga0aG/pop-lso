function [optimizerOptions, ...
    maximumEvaluations, ...
    maximumRuntime, ...
    thresholdFitness, ...
    populationSize] = ...
    poCheckPureRandomSearch(optimizerOptions)
% Check whether all options of pure random search are set properly.
%
% Input ->
%   optimizerOptions : optimizer options, specified as a structure scalar
%       with the following fields:
%       1. maximumEvaluations : maximum of function evaluations, specified as a positive integer scalar.
%       2. maximumRuntime     : maximum of runtime, specified as a positive integer scalar.
%                               If no value is specified, then the default is `Inf`.
%       3. thresholdFitness   : stopping threshold of the best-so-far fitness, specified as a scalar.
%                               If no value is specified, then the default is `-Inf`.
%       4. populationSize     : population size, specified as a positive integer scalar.
%                               If no value is specified, then the default is `1000`.
% Output <-
%   optimizerOptions : optimizer options, specified as a structure scalar.

[optimizerOptions, ...
    maximumEvaluations, ...
    maximumRuntime, ...
    thresholdFitness] = poCheckOptimizerOptions(optimizerOptions);

% populationSize
if ~isfield(optimizerOptions, 'populationSize')
    optimizerOptions.populationSize = 1000;
end
if ~poIsPositiveIntegerScalar(optimizerOptions.populationSize)
    error('`populationSize` should be a positive integer scalar.');
end
populationSize = optimizerOptions.populationSize;
end
