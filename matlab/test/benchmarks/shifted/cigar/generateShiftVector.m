clear; clc;

%%
tic;
funcName = 'poCigar';
for i = 1 : 100
    rng(1111 + i);
    problemParameters = poSetProblemParameters(funcName, i, 5);
    poGenerateShiftVector(problemParameters);
end
toc;
