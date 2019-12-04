clear; clc;

%% true (1)
disp(poIsIntegerVector(0));
disp(poIsIntegerVector([1 0 -1]));
disp(poIsIntegerVector([1 0 -1]'));

%% false (0)
disp(poIsIntegerVector(eps));
disp(poIsIntegerVector([1 0 -1.1]));
disp(poIsIntegerVector([1.1 0 -1]'));
disp(poIsIntegerVector(ones(2, 3)));
disp(poIsIntegerVector([-Inf, Inf]));
disp(poIsIntegerVector([NaN, NaN]));
disp(poIsIntegerVector([]));
disp(poIsIntegerVector({[], []}));
