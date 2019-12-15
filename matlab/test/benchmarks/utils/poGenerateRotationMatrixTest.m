clear; clc;

%%
rng(1912152229);
problemParameters.name = 'poSphere';
problemParameters.dimension = 3;
problemParameters.upperBounds = ones(3, 1);
problemParameters.lowerBounds = -ones(3, 1);
poGenerateRotationMatrix(problemParameters);
%   -9.8510936e-01   3.4433259e-02   1.6844554e-01
%    5.1169707e-02   9.9406049e-01   9.6048939e-02
%   -1.6413778e-01   1.0323802e-01  -9.8102023e-01
