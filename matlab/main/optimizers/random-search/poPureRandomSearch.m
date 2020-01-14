function searchResults = poPureRandomSearch(problemParameters, optimizerOptions)
% Pure Random Search.
%
% Input ->
%   problemParameters : problem parameters, specified as a structure scalar.
%   optimizerOptions  : optimizer options, specified as a structure scalar.
% Output <-
%   searchResults : search results, specified as a structure scalar.
startTime = tic;

% load and check problem parameters
[problemParameters, name, ~, upperBounds, lowerBounds] = ...
    poCheckProblemParameters(problemParameters);

% load and check optimizer options
[optimizerOptions, maximumEvaluations, maximumRuntime, ...
    thresholdFitness, populationSize] = ...
    poCheckPureRandomSearch(optimizerOptions);

% initialize population (i.e., X)
X = poInitializePopulation(problemParameters, optimizerOptions);
upperBounds = repmat(upperBounds, 1, populationSize);
lowerBounds = repmat(lowerBounds, 1, populationSize);

% initialize fitness (i.e., y)
startEvaluations = tic;
y = feval(name, X);
timeEvaluations = toc(startEvaluations);
numberEvaluations = populationSize;
evaluations = y;

% initialize `optimalSolution` and `optimalFitness`
[optimalFitness, optimalFitnessIndex] = min(y);
optimalSolution = X(:, optimalFitnessIndex);

% iteratively optimize
numberIterations = 1;
stoppingFlag = 'maximumEvaluations';
while numberEvaluations < maximumEvaluations
    if toc(startTime) >= maximumRuntime
        stoppingFlag = 'maximumRuntime';
        break;
    end
    
    if optimalFitness <= thresholdFitness
        stoppingFlag = 'thresholdFitness';
        break;
    end
    
    % generate uniformly distributed random samples (i.e., X)
    X = unifrnd(lowerBounds, upperBounds);
    
    % evaluate fitness of new samples (i.e., y)
    startEvaluations = tic;
    y = feval(name, X);
    timeEvaluations = timeEvaluations + toc(startEvaluations);
    numberEvaluations = numberEvaluations + populationSize;
    evaluations = cat(2, evaluations, y);
    
    % update `optimalSolution` and `optimalFitness`
    [newFitness, newFitnessIndex] = min(y);
    if optimalFitness >= newFitness
        optimalFitness = newFitness;
        optimalSolution = X(:, newFitnessIndex);
    end
    
    numberIterations = numberIterations + 1;
end

% return final search results
searchResults.optimalFitness = optimalFitness;
searchResults.optimalSolution = optimalSolution;
searchResults.numberEvaluations = numberEvaluations;
searchResults.numberIterations = numberIterations;
searchResults.timeEvaluations= timeEvaluations;
searchResults.evaluations = evaluations;
searchResults.stoppingFlag = stoppingFlag;
searchResults.problemParameters = problemParameters;
searchResults.optimizerOptions = optimizerOptions;
searchResults.runtime = toc(startTime);
end
