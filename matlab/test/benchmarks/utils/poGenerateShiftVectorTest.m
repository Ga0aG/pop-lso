clear; clc;

%%
rng(1912132023);
problemParameters.name = 'poSphere';
problemParameters.dimension = 3;
problemParameters.upperBounds = [5 2 1]';
problemParameters.lowerBounds = -[5 2 1]';
poGenerateShiftVector(problemParameters);
%   -1.1636159e-01
%   -1.4186759e+00
%   -7.6694313e-01
