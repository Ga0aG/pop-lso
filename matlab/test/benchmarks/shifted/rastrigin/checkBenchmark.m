clear; clc;

% first, run the script called generateShiftVector.m, which is
% located in the same directory.

funcName = 'poShiftedRastrigin';

%%
X = poLoadTestCases(2);
y = [8 2 0 2 8];
poManuallyCheckBenchmark(funcName, X, y, true);

%%
X = poLoadTestCases(3);
y = [12 3 0 3 12];
poManuallyCheckBenchmark(funcName, X, y, true);

%%
X = poLoadTestCases(4);
y = [0 4 4 4 30 30 30];
poManuallyCheckBenchmark(funcName, X, y, true);

%%
X = poLoadTestCases(5);
y = [0 5 5 5 55 55 55];
poManuallyCheckBenchmark(funcName, X, y, true);

%%
X = poLoadTestCases(6);
y = [0 6 6 6 91 91 91];
poManuallyCheckBenchmark(funcName, X, y, true);

%%
X = poLoadTestCases(7);
y = [0 7 7 7 140 140 140 91];
poManuallyCheckBenchmark(funcName, X, y, true);

%%
tic;
poAutomaticallyCheckBenchmark(funcName);
toc;

%%
% poShiftedRastrigin : pass the manual checking within the tolerance `1.00e-12`.
% poShiftedRastrigin : pass the manual checking within the tolerance `1.00e-12`.
% poShiftedRastrigin : pass the manual checking within the tolerance `1.00e-12`.
% poShiftedRastrigin : pass the manual checking within the tolerance `1.00e-12`.
% poShiftedRastrigin : pass the manual checking within the tolerance `1.00e-12`.
% poShiftedRastrigin : pass the manual checking within the tolerance `1.00e-12`.
% poShiftedRastrigin : pass the automatic checking within the tolerance `1.00e-12`.
