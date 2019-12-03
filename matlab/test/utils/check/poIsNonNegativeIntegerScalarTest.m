clear; clc;

%% true (1)
disp(poIsNonNegativeIntegerScalar(0));
disp(poIsNonNegativeIntegerScalar(1));
disp(poIsNonNegativeIntegerScalar(10));
disp(poIsNonNegativeIntegerScalar(999));

%% false (0)
disp(poIsNonNegativeIntegerScalar([1 10 999]));
disp(poIsNonNegativeIntegerScalar(1.01));
disp(poIsNonNegativeIntegerScalar(999.99));
disp(poIsNonNegativeIntegerScalar(eps));
disp(poIsNonNegativeIntegerScalar(-1000));
disp(poIsNonNegativeIntegerScalar([]));
disp(poIsNonNegativeIntegerScalar(Inf));
disp(poIsNonNegativeIntegerScalar(NaN));
