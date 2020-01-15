clear; clc;

%%
rng(202001);
problemParameters = poSetProblemParameters('poSphere', 10, 10);
algoOptions = struct();
algoOptions.seedPopulation = 1;
algoOptions.maximumEvaluations = 1e5 * problemParameters.dimension;
algoOptions.maximumRuntime = 60 * problemParameters.dimension; % seconds
algoOptions.thresholdFitness = 1e-10;
searchResults = poPureRandomSearch(problemParameters, algoOptions);
disp(searchResults);
%        optimalFitness: 14.7455
%     numberEvaluations: 1000000
%      numberIterations: 1000
%          stoppingFlag: 'maximumEvaluations'

%%
rng(202002);
problemParameters = poSetProblemParameters('poEllipsoid', 10, 10);
algoOptions = struct();
algoOptions.seedPopulation = 2;
algoOptions.maximumEvaluations = 1e5 * problemParameters.dimension;
algoOptions.maximumRuntime = 60 * problemParameters.dimension; % seconds
algoOptions.thresholdFitness = 1e-10;
searchResults = poPureRandomSearch(problemParameters, algoOptions);
disp(searchResults);
%        optimalFitness: 4.8293e+04
%     numberEvaluations: 1000000
%      numberIterations: 1000
%          stoppingFlag: 'maximumEvaluations'

%%
rng(202003);
problemParameters = poSetProblemParameters('poRosenbrock', 10, 10);
algoOptions = struct();
algoOptions.seedPopulation = 3;
algoOptions.maximumEvaluations = 1e5 * problemParameters.dimension;
algoOptions.maximumRuntime = 60 * problemParameters.dimension; % seconds
algoOptions.thresholdFitness = 1e-10;
searchResults = poPureRandomSearch(problemParameters, algoOptions);
disp(searchResults);
%        optimalFitness: 1.0383e+04
%     numberEvaluations: 1000000
%      numberIterations: 1000
%          stoppingFlag: 'maximumEvaluations'
