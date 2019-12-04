clear; clc;

%% true (1)
disp(poIsNonNegativeIntegerVector(0));
disp(poIsNonNegativeIntegerVector(1));
disp(poIsNonNegativeIntegerVector([1 0]));
disp(poIsNonNegativeIntegerVector([0 1]'));
disp(poIsNonNegativeIntegerVector([1 2]));
disp(poIsNonNegativeIntegerVector([1 2]'));

%% false (0)
disp(poIsNonNegativeIntegerVector([1 0 -1]));
disp(poIsNonNegativeIntegerVector([1 0 -1]'));
