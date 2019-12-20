clear; clc;

funcName = 'poRosenbrock';

%%
X = poLoadTestCases(2);
y = [409 4 1 0 401];
poManuallyCheckBenchmark(funcName, X, y);

%%
X = poLoadTestCases(3);
y = [810 4 2 400 4002];
poManuallyCheckBenchmark(funcName, X, y);

%%
X = poLoadTestCases(4);
y = [3 0 1212 804 2705 17913 24330];
poManuallyCheckBenchmark(funcName, X, y);

%%
X = poLoadTestCases(5);
y = [4 0 1616 808 14814 30038 68450];
poManuallyCheckBenchmark(funcName, X, y);

%%
X = poLoadTestCases(6);
y = [5 0 2020 808 50930 126154 164579];
poManuallyCheckBenchmark(funcName, X, y);

%%
X = poLoadTestCases(7);
y = [6 0 2424 1208 135055 210303 349519 51031];
poManuallyCheckBenchmark(funcName, X, y);

%%
tic;
poAutomaticallyCheckBenchmark(funcName);
toc;

%%
% poRosenbrock : pass the manual checking within the tolerance `1.00e-12`.
% poRosenbrock : pass the manual checking within the tolerance `1.00e-12`.
% poRosenbrock : pass the manual checking within the tolerance `1.00e-12`.
% poRosenbrock : pass the manual checking within the tolerance `1.00e-12`.
% poRosenbrock : pass the manual checking within the tolerance `1.00e-12`.
% poRosenbrock : pass the manual checking within the tolerance `1.00e-12`.
% poRosenbrock : pass the automatic checking within the tolerance `1.00e-12`.
