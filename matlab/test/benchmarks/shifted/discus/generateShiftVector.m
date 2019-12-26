clear; clc;

%%
tic;
funcName = 'poDiscus';
for i = 1 : 100
    rng(11111 + i);
    problemParameters = poSetProblemParameters(funcName, i, 5);
    poGenerateShiftVector(problemParameters);
end
toc;
