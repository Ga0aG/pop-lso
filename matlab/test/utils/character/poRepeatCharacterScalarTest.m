clear; clc;

%%
fprintf([poRepeatCharacterScalar() '\n']);
% #############################################################################
fprintf([poRepeatCharacterScalar(7) '\n']);
% #######
fprintf([poRepeatCharacterScalar(5, '*') '\n']);
% *****

%% the input `A` should be a character scalar.
fprintf([poRepeatCharacterScalar(5, '**') '\n']);

%% the input `n` should be a positive integer scalar.
fprintf([poRepeatCharacterScalar(0, '*') '\n']);
