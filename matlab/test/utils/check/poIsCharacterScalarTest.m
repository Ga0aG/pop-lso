clear; clc;

%% true (1)
disp(poIsCharacterScalar('a'));
disp(poIsCharacterScalar('Z'));
disp(poIsCharacterScalar('/'));
disp(poIsCharacterScalar('1'));

%% false (0)
disp(poIsCharacterScalar("a"));
disp(poIsCharacterScalar('ab'));
disp(poIsCharacterScalar(['a'; 'b']));
disp(poIsCharacterScalar(1));
disp(poIsCharacterScalar('-1'));
disp(poIsCharacterScalar(Inf));
disp(poIsCharacterScalar(NaN));
disp(poIsCharacterScalar([]));
disp(poIsCharacterScalar({}));
