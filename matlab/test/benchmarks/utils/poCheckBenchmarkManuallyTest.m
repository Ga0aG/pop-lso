clear; clc;

funcName = 'poSphere';

%%
X = poLoadTestCases(1);
y = [4 1 0 1 4];
disp(poCheckBenchmarkManually(funcName, X, y));

%%
X = poLoadTestCases(2);
y = [8 2 0 2 8];
disp(poCheckBenchmarkManually(funcName, X, y));

%%
X = poLoadTestCases(3);
y = [12 3 0 3 12];
disp(poCheckBenchmarkManually(funcName, X, y));

%%
X = poLoadTestCases(4);
y = [0 4 4 4 30 30 30];
disp(poCheckBenchmarkManually(funcName, X, y));

%%
X = poLoadTestCases(5);
y = [0 5 5 5 55 55 55];
disp(poCheckBenchmarkManually(funcName, X, y));

%%
X = poLoadTestCases(6);
y = [0 6 6 6 91 91 91];
disp(poCheckBenchmarkManually(funcName, X, y));

%%
X = poLoadTestCases(7);
y = [0 7 7 7 140 140 140 91];
disp(poCheckBenchmarkManually(funcName, X, y));
