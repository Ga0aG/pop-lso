clear; clc;

%%
optimizerOptions.maximumEvaluations = 2e5;
optimizerOptions.maximumRuntime = 60;
optimizerOptions.thresholdFitness = 1e-10;
[optimizerOptions, maximumEvaluations, maximumRuntime, thresholdFitness, populationSize] = ...
    poCheckPureRandomSearch(optimizerOptions);
disp(optimizerOptions);
disp(maximumEvaluations); % 200000
disp(maximumRuntime); % 60
disp(thresholdFitness); % 1.0000e-10
disp(populationSize); % 1000

%%
optimizerOptions.maximumEvaluations = 2e5;
optimizerOptions.maximumRuntime = 60;
optimizerOptions.thresholdFitness = 1e-10;
optimizerOptions.populationSize = 20;
[optimizerOptions, maximumEvaluations, maximumRuntime, thresholdFitness, populationSize] = ...
    poCheckPureRandomSearch(optimizerOptions);
disp(optimizerOptions);
disp(maximumEvaluations); % 200000
disp(maximumRuntime); % 60
disp(thresholdFitness); % 1.0000e-10
disp(populationSize); % 20

%% `populationSize` should be a positive integer scalar.
optimizerOptions.maximumEvaluations = 2e5;
optimizerOptions.maximumRuntime = 60;
optimizerOptions.thresholdFitness = 1e-10;
optimizerOptions.populationSize = 0;
poCheckPureRandomSearch(optimizerOptions);
