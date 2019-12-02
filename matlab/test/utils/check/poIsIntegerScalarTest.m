clear; clc;

%% true (1)
disp(poIsIntegerScalar(7));
disp(poIsIntegerScalar(0));
disp(poIsIntegerScalar(-5));

%% false (0)
disp(poIsIntegerScalar(7.99));
disp(poIsIntegerScalar(eps));
disp(poIsIntegerScalar(-5.01));
disp(poIsIntegerScalar([]));
disp(poIsIntegerScalar(Inf));
disp(poIsIntegerScalar(-Inf));
disp(poIsIntegerScalar([7 0 -5]));
disp(poIsIntegerScalar('a'));
disp(poIsIntegerScalar("a"));
disp(poIsIntegerScalar({}));
disp(poIsIntegerScalar(NaN));
