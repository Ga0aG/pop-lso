clear; clc;

%%
tic;
funcName = 'poGriewank';
for i = 1 : 100
    rng(111111111 + i);
    problemParameters = poSetProblemParameters(funcName, i, 5);
    poGenerateShiftVector(problemParameters);
end
toc;
