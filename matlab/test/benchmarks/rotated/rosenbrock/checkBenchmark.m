clear; clc;

% first, run the script called generateRotationMatrix.m, which is
% located in the same directory.

funcName = 'poRotatedRosenbrock';

%%
tic;
poAutomaticallyCheckBenchmark(funcName);
toc;

%%
% poRotatedRosenbrock : pass the automatic checking within the tolerance `1.00e-06`.
