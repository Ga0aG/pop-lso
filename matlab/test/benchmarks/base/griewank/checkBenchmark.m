clear; clc;

funcName = 'poGriewank';

%%
X = poLoadTestCases(2);
y = [1.066895 0.589738 0 0.589738 1.066895];
poManuallyCheckBenchmark(funcName, X, y);

%%
X = poLoadTestCases(3);
y = [1.029230 0.656567 0 0.656567 1.029230];
poManuallyCheckBenchmark(funcName, X, y);

%%
X = poLoadTestCases(4);
y = [0 0.698951 0.698951 0.698951 1.001870 1.001870 0.886208];
poManuallyCheckBenchmark(funcName, X, y);

%%
X = poLoadTestCases(5);
y = [0 0.728906 0.728906 0.728906 1.017225 1.017225 0.992641];
poManuallyCheckBenchmark(funcName, X, y);

%%
X = poLoadTestCases(6);
y = [0 0.751538 0.751538 0.751538 1.020074 1.020074 0.998490];
poManuallyCheckBenchmark(funcName, X, y);

%%
X = poLoadTestCases(7);
y = [0 0.769431 0.769431 0.769431 1.037353 1.037353 1.054868 1.024118];
poManuallyCheckBenchmark(funcName, X, y);

%%
tic;
poAutomaticallyCheckBenchmark(funcName);
toc;

%%
% poGriewank : pass the manual checking within the tolerance `1.00e-06`.
% poGriewank : pass the manual checking within the tolerance `1.00e-06`.
% poGriewank : pass the manual checking within the tolerance `1.00e-06`.
% poGriewank : pass the manual checking within the tolerance `1.00e-06`.
% poGriewank : pass the manual checking within the tolerance `1.00e-06`.
% poGriewank : pass the manual checking within the tolerance `1.00e-06`.
% poGriewank : pass the automatic checking within the tolerance `1.00e-12`.
