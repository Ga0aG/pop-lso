clear; clc;

%%
tic;
funcName = 'poRosenbrock';
for i = 1 : 100
    rng(111 + i);
    problemParameters = poSetProblemParameters(funcName, i, 5);
    poGenerateShiftVector(problemParameters);
end
toc;
