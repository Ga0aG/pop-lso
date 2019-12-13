function poGenerateShiftVector(problemParameters)
% Generate a shift vector and save it in form of txt file.
%
% Input ->
%   problemParameters : problem parameters, specified as a structure scalar.
[~, name, dimension, upperBounds, lowerBounds] = ...
    poCheckProblemParameters(problemParameters);

dataFolder = 'poInputData'; % reserved word of the toolbox
if exist(dataFolder, 'dir') ~= 7
    mkdir(dataFolder);
end
dataPath = sprintf('./%s/poShiftVector-%s-D%d.txt', dataFolder, name, dimension);
poShiftVector = unifrnd(lowerBounds, upperBounds);
save(dataPath, 'poShiftVector', '-ascii');
end
