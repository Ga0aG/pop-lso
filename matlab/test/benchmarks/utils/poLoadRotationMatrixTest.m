clear; clc;

%%
% first, run the script called poGenerateRotationMatrixTest.m, which is
% located in the same directory.
poRotationMatrix = poLoadRotationMatrix('poSphere', 3);
disp(poRotationMatrix);
%    -0.9851    0.0344    0.1684
%     0.0512    0.9941    0.0960
%    -0.1641    0.1032   -0.9810
