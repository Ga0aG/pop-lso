clear; clc;

%%
problemParameters = poSetProblemParameters('Sphere', 2, 7);
disp(problemParameters);

%%
problemParameters = poSetProblemParameters('Sphere', 2, 7, 2);
disp(problemParameters);

%%
problemParameters = poSetProblemParameters('Sphere', 2, 7, 2, 5);
disp(problemParameters);

%%
problemParameters = poSetProblemParameters('Sphere', 2, 7, 2, 5, 3);
disp(problemParameters);

%%
problemParameters = poSetProblemParameters('Sphere', 2, [7 7]);
disp(problemParameters);

%%
problemParameters = poSetProblemParameters('Sphere', 2, [7 7], [2 2]');
disp(problemParameters);

%%
problemParameters = poSetProblemParameters('Sphere', 2, [7 7], 2, [5 5]');
disp(problemParameters);

%%
problemParameters = poSetProblemParameters('Sphere', 2, [7 7], 2, 5, [3 3]');
disp(problemParameters);

%% set at least three inputs: `name`, `dimension`, and `upperBounds`.
poSetProblemParameters('Sphere', 2);

%% the input `dimension` should be a positive integer scalar.
poSetProblemParameters('Sphere', 0, 7);

%% the input `upperBounds` should be greater than 0, when set to a scalar.
poSetProblemParameters('Sphere', 2, 0);

%% set `optimalSolution` and `optimalFitness` simultaneously.
problemParameters = poSetProblemParameters('Sphere', 2, 7, 2, 5, 3, 0);
disp(problemParameters);

%% `upperBounds` should be greater than `lowerBounds`.
problemParameters = poSetProblemParameters('Sphere', 2, 7, 20, 5, 3);
disp(problemParameters);

%% `initialUpperBounds` should be greater than `initialLowerBounds`.
problemParameters = poSetProblemParameters('Sphere', 2, 7, 2, 5, 30);
disp(problemParameters);

%% `initialUpperBounds` should be less than or equal to `upperBounds`.
problemParameters = poSetProblemParameters('Sphere', 2, 7, 2, 50, 1);
disp(problemParameters);
