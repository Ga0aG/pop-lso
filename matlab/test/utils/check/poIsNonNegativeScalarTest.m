clear; clc;

%% true (1)
disp(poIsNonNegativeScalar(0));
disp(poIsNonNegativeScalar(eps));
disp(poIsNonNegativeScalar(10.99));

%% false (0)
disp(poIsNonNegativeScalar([1 10]));
disp(poIsNonNegativeScalar(zeros(2, 3)));
disp(poIsNonNegativeScalar(-0.001));
disp(poIsNonNegativeScalar('a'));
disp(poIsNonNegativeScalar([]));
disp(poIsNonNegativeScalar({}));
disp(poIsNonNegativeScalar(Inf));
disp(poIsNonNegativeScalar(NaN));
