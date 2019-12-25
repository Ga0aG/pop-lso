clear; clc;

%%
tic;
funcName = 'poEllipsoid';
for i = 1 : 100
    rng(11 + i);
    problemParameters = poSetProblemParameters(funcName, i, 5);
    poGenerateShiftVector(problemParameters);
end
toc;
