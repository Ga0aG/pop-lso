clear; clc;

%% true (1)
a.a = 'a';
disp(poIsProblemType(a));
b.b = [];
disp(poIsProblemType(b));
c.c = {};
disp(poIsProblemType(c));

%% false (0)
a = struct('a', {'a', 'aa'});
disp(poIsProblemType(a));
b = [];
disp(poIsProblemType(b));
c = {};
disp(poIsProblemType(c));
