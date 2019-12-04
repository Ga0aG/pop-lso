clear; clc;

%% true (1)
disp(poIsPositiveIntegerVector(1));
disp(poIsPositiveIntegerVector([1 2]));
disp(poIsPositiveIntegerVector([1 2]'));

%% false (0)
disp(poIsPositiveIntegerVector(0));
disp(poIsPositiveIntegerVector([1 0 -1]));
disp(poIsPositiveIntegerVector([1 0 -1]'));
