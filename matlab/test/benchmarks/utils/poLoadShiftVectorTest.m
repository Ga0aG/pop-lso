clear; clc;

%%
% first, run the script called poGenerateShiftVectorTest.m, which is
% located in the same directory.
poShiftVector = poLoadShiftVector('poSphere', 3);
disp(poShiftVector);
%   -1.1636159e-01
%   -1.4186759e+00
%   -7.6694313e-01
