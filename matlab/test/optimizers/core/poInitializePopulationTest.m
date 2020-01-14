clear; clc;

%%
problemParameters = poSetProblemParameters('JustForFun', 2, 7);
optimizerOptions = struct();
optimizerOptions.populationSize = 3;
optimizerOptions.seedPopulation = 202001;
X = poInitializePopulation(problemParameters, optimizerOptions);
disp(X);
%    -5.0113    5.7805   -1.7482
%     5.7700   -1.3154   -2.2205

%%
problemParameters = poSetProblemParameters('JustForFun', 2, 7);
optimizerOptions = struct();
optimizerOptions.populationSize = 3;
optimizerOptions.initialPopulation = ones(2, 3);
X = poInitializePopulation(problemParameters, optimizerOptions);
disp(X);
%      1     1     1
%      1     1     1

%%
problemParameters = poSetProblemParameters('JustForFun', 2, 7);
optimizerOptions = struct();
optimizerOptions.populationSize = 3;
optimizerOptions.seedPopulation = 202001;
optimizerOptions.initialPopulation = ones(2, 3);
X = poInitializePopulation(problemParameters, optimizerOptions);
disp(X);
%      1     1     1
%      1     1     1

%% set at least one field (`initialPopulation` or `seedPopulation`) for `optimizerOptions`.
problemParameters = poSetProblemParameters('JustForFun', 2, 7);
optimizerOptions = struct();
optimizerOptions.populationSize = 3;
poInitializePopulation(problemParameters, optimizerOptions);

%% `X` should not be out of upper bounds.
problemParameters = poSetProblemParameters('JustForFun', 2, 7);
optimizerOptions = struct();
optimizerOptions.populationSize = 3;
optimizerOptions.initialPopulation = [1 10 1; -1 -1 -1];
poInitializePopulation(problemParameters, optimizerOptions);

%% `X` should not be out of lower bounds.
problemParameters = poSetProblemParameters('JustForFun', 2, 7);
optimizerOptions = struct();
optimizerOptions.populationSize = 3;
optimizerOptions.initialPopulation = [1 1 1; -1 -10 -1];
poInitializePopulation(problemParameters, optimizerOptions);

%% `X` should be a 2-by-3 matrix.
problemParameters = poSetProblemParameters('JustForFun', 2, 7);
optimizerOptions = struct();
optimizerOptions.populationSize = 3;
optimizerOptions.initialPopulation = ones(3, 2);
poInitializePopulation(problemParameters, optimizerOptions);
