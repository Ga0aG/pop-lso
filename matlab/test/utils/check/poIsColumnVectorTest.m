clear; clc;

%% true (1)
disp(poIsColumnVector(1));
disp(poIsColumnVector([-1 0 1]'));
disp(poIsColumnVector([-1 0 1]', 3));

%% false (0)
disp(poIsColumnVector([-1 0 1]));
disp(poIsColumnVector([-1 0 1]', 2));
disp(poIsColumnVector(ones(3, 2)));
disp(poIsColumnVector('a'));
disp(poIsColumnVector(NaN));
disp(poIsColumnVector([Inf Inf]'));
disp(poIsColumnVector([]));
disp(poIsColumnVector({}));

%% the input `n` should be a positive integer scalar.
disp(poIsColumnVector([-1 0 1]', 0));
