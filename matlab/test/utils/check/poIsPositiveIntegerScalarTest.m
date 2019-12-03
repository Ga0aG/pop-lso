clear; clc;

%% true (1)
disp(poIsPositiveIntegerScalar(1));
disp(poIsPositiveIntegerScalar(10));
disp(poIsPositiveIntegerScalar(999));

%% false (0)
disp(poIsPositiveIntegerScalar([1 10 999]));
disp(poIsPositiveIntegerScalar(1.01));
disp(poIsPositiveIntegerScalar(999.99));
disp(poIsPositiveIntegerScalar(0));
disp(poIsPositiveIntegerScalar(eps));
disp(poIsPositiveIntegerScalar(-1000));
disp(poIsPositiveIntegerScalar([]));
disp(poIsPositiveIntegerScalar(Inf));
disp(poIsPositiveIntegerScalar(NaN));
