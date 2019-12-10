clear; clc;

%%
disp(poScalar2ColumnVector(1, 3)'); % 1 1 1
disp(poScalar2ColumnVector([1 2], 3)); % 1 2
disp(poScalar2ColumnVector([1 2]', 3)'); % 1 2
disp(poScalar2ColumnVector(ones(2, 3), 3));
% 1 1 1
% 1 1 1

%% the input `n` should be a positive integer scalar.
poScalar2ColumnVector(1, 0);
