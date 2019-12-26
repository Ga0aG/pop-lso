clear; clc;

%%
tic;
funcName = 'poSchwefel221';
for i = 1 : 100
    rng(111111 + i);
    problemParameters = poSetProblemParameters(funcName, i, 5);
    poGenerateShiftVector(problemParameters);
end
toc;
