clear; clc;

%%
poCheckSearchBounds(1, 1, -1, 1, -1);
poCheckSearchBounds(2, [2 2]', [-2 -2]', [1 0]', [0 -1]');

%% the input `upperBounds` should be a column vector of length `dimension`.
poCheckSearchBounds(2, [2 2], [-2 -2]', [1 0]', [0 -1]');

%% the input `lowerBounds` should be a column vector of length `dimension`.
poCheckSearchBounds(2, [2 2]', [-2 -2 -2]', [1 0]', [0 -1]');

%% the input `initialUpperBounds` should be a column vector of length `dimension`.
poCheckSearchBounds(2, [2 2]', [-2 -2]', 1, [0 -1]');

%% the input `initialLowerBounds` should be a column vector of length `dimension`.
poCheckSearchBounds(2, [2 2]', [-2 -2]', [1 0]', [0 -1]);

%% `upperBounds` should be greater than `lowerBounds`.
poCheckSearchBounds(2, [2 2]', [-2 2]', [1 0]', [0 -1]');

%% `initialUpperBounds` should be greater than `initialLowerBounds`.
poCheckSearchBounds(2, [2 2]', [-2 -2]', [1 0]', [2 -1]');

%% `initialUpperBounds` should be less than or equal to `upperBounds`.
poCheckSearchBounds(2, [2 2]', [-2 -2]', [1 3]', [0 -1]');

%% `initialLowerBounds` should be greater than or equal to `lowerBounds`.
poCheckSearchBounds(2, [2 2]', [-2 -2]', [1 0]', [0 -3]');
