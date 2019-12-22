clear; clc;

funcName = 'poSchwefel221';

%%
X = poLoadTestCases(1);
y = [2 1 0 1 2];
poManuallyCheckBenchmark(funcName, X, y);

%%
X = poLoadTestCases(2);
y = [2 1 0 1 2];
poManuallyCheckBenchmark(funcName, X, y);

%%
X = poLoadTestCases(3);
y = [2 1 0 1 2];
poManuallyCheckBenchmark(funcName, X, y);

%%
X = poLoadTestCases(4);
y = [0 1 1 1 4 4 4];
poManuallyCheckBenchmark(funcName, X, y);

%%
X = poLoadTestCases(5);
y = [0 1 1 1 5 5 5];
poManuallyCheckBenchmark(funcName, X, y);

%%
X = poLoadTestCases(6);
y = [0 1 1 1 6 6 6];
poManuallyCheckBenchmark(funcName, X, y);

%%
X = poLoadTestCases(7);
y = [0 1 1 1 7 7 7 6];
poManuallyCheckBenchmark(funcName, X, y);

%%
tic;
poAutomaticallyCheckBenchmark(funcName);
toc;

%%
% poSchwefel221 : pass the manual checking within the tolerance `1.00e-12`.
% poSchwefel221 : pass the manual checking within the tolerance `1.00e-12`.
% poSchwefel221 : pass the manual checking within the tolerance `1.00e-12`.
% poSchwefel221 : pass the manual checking within the tolerance `1.00e-12`.
% poSchwefel221 : pass the manual checking within the tolerance `1.00e-12`.
% poSchwefel221 : pass the manual checking within the tolerance `1.00e-12`.
% poSchwefel221 : pass the manual checking within the tolerance `1.00e-12`.
% poSchwefel221 : pass the automatic checking within the tolerance `1.00e-12`.
