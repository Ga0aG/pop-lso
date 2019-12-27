clear; clc;

% first, run the script called generateShiftVector.m, which is
% located in the same directory.

funcName = 'poShiftedSchwefel221';

%%
X = poLoadTestCases(1);
y = [2 1 0 1 2];
poManuallyCheckBenchmark(funcName, X, y, true);

%%
X = poLoadTestCases(2);
y = [2 1 0 1 2];
poManuallyCheckBenchmark(funcName, X, y, true);

%%
X = poLoadTestCases(3);
y = [2 1 0 1 2];
poManuallyCheckBenchmark(funcName, X, y, true);

%%
X = poLoadTestCases(4);
y = [0 1 1 1 4 4 4];
poManuallyCheckBenchmark(funcName, X, y, true);

%%
X = poLoadTestCases(5);
y = [0 1 1 1 5 5 5];
poManuallyCheckBenchmark(funcName, X, y, true);

%%
X = poLoadTestCases(6);
y = [0 1 1 1 6 6 6];
poManuallyCheckBenchmark(funcName, X, y, true);

%%
X = poLoadTestCases(7);
y = [0 1 1 1 7 7 7 6];
poManuallyCheckBenchmark(funcName, X, y, true);

%%
tic;
poAutomaticallyCheckBenchmark(funcName);
toc;

%%
% poShiftedSchwefel221 : pass the manual checking within the tolerance `1.00e-12`.
% poShiftedSchwefel221 : pass the manual checking within the tolerance `1.00e-12`.
% poShiftedSchwefel221 : pass the manual checking within the tolerance `1.00e-12`.
% poShiftedSchwefel221 : pass the manual checking within the tolerance `1.00e-12`.
% poShiftedSchwefel221 : pass the manual checking within the tolerance `1.00e-12`.
% poShiftedSchwefel221 : pass the manual checking within the tolerance `1.00e-12`.
% poShiftedSchwefel221 : pass the manual checking within the tolerance `1.00e-12`.
% poShiftedSchwefel221 : pass the automatic checking within the tolerance `1.00e-12`.
