clear; clc;

%% true (1)
a.a = 'a';
disp(poIsOptimizerOptionsType(a));
b.b = [];
disp(poIsOptimizerOptionsType(b));
c.c = {};
disp(poIsOptimizerOptionsType(c));

%% false (0)
a = struct('a', {'a', 'aa'});
disp(poIsOptimizerOptionsType(a));
b = [];
disp(poIsOptimizerOptionsType(b));
c = {};
disp(poIsOptimizerOptionsType(c));
