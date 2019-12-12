clear; clc;

%% true (1)
disp(poIsProblemName('abc'));
disp(poIsProblemName("abc"));

%% false (0)
disp(poIsProblemName(0));
disp(poIsProblemName([]));
disp(poIsProblemName({}));
disp(poIsProblemName(["abc" "xyz"]));
disp(poIsProblemName({"abc"; "xyz"}));
disp(poIsProblemName(['a'; 'b']));
