clear; clc;

funcName = 'poAckley';

%%
X = poLoadTestCases(2);
y = [6.593599 3.625384 0 3.625384 6.593599];
poManuallyCheckBenchmark(funcName, X, y);

%%
X = poLoadTestCases(3);
y = [6.593599 3.625384 0 3.625384 6.593599];
poManuallyCheckBenchmark(funcName, X, y);

%%
X = poLoadTestCases(4);
y = [0 3.625384 3.625384 3.625384 8.434694 8.434694 8.434694];
poManuallyCheckBenchmark(funcName, X, y);

%%
X = poLoadTestCases(5);
y = [0 3.625384 3.625384 3.625384 9.697286 9.697286 9.697286];
poManuallyCheckBenchmark(funcName, X, y);

%%
X = poLoadTestCases(6);
y = [0 3.625384 3.625384 3.625384 10.821680 10.821680 10.821680];
poManuallyCheckBenchmark(funcName, X, y);

%%
X = poLoadTestCases(7);
y = [0 3.625384 3.625384 3.625384 11.823165 11.823165 11.823165 10.275757];
poManuallyCheckBenchmark(funcName, X, y);

%%
tic;
poAutomaticallyCheckBenchmark(funcName);
toc;

%%
% poAckley : pass the manual checking within the tolerance `1.00e-06`.
% poAckley : pass the manual checking within the tolerance `1.00e-06`.
% poAckley : pass the manual checking within the tolerance `1.00e-06`.
% poAckley : pass the manual checking within the tolerance `1.00e-06`.
% poAckley : pass the manual checking within the tolerance `1.00e-06`.
% poAckley : pass the manual checking within the tolerance `1.00e-06`.
% poAckley : pass the automatic checking within the tolerance `1.00e-12`.
