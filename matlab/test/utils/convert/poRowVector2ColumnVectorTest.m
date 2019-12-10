clear; clc;

%%
disp(poRowVector2ColumnVector(2)'); % 2
disp(poRowVector2ColumnVector([1 2 3])'); % 1 2 3

%%
disp(poRowVector2ColumnVector([1 2 3]')'); % 1 2 3
disp(poRowVector2ColumnVector(ones(2, 3)));
% 1 1 1
% 1 1 1
