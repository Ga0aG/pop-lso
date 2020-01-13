clear; clc;

% first, run the script called generateRotationMatrix.m, which is
% located in the same directory.

funcName = 'poRotatedEllipsoid';

%%
tic;
funcDims = [2 5 7 10 20 50 70 100 1e3 1e4];
for i = 1 : numel(funcDims)
    funcDim = funcDims(i);
    X = zeros(funcDim, randi(1e3));
    y = zeros(1, size(X, 2));
    poManuallyCheckBenchmark(funcName, X, y);
end
toc;

%%
tic;
poAutomaticallyCheckBenchmark(funcName);
toc;
