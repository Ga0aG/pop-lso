clear; clc;

%%
tic;
funcName = 'poRastrigin';
for i = 1 : 100
    rng(1111111 + i);
    problemParameters = poSetProblemParameters(funcName, i, 5);
    poGenerateShiftVector(problemParameters);
end
toc;
