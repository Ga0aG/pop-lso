clear; clc;

%%
tic;
funcName = 'poSphere';
for i = 1 : 100
    rng(1 + i);
    problemParameters = poSetProblemParameters(funcName, i, 5);
    poGenerateShiftVector(problemParameters);
end
toc;
