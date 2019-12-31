clear; clc;

%%
tic;
funcName = 'poAckley';
for i = 1 : 100
    rng(11111111 + i);
    problemParameters = poSetProblemParameters(funcName, i, 5);
    poGenerateShiftVector(problemParameters);
end
toc;
