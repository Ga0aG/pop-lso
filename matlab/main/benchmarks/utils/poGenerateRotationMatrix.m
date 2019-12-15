function poGenerateRotationMatrix(problemParameters)
% Generate a rotation matrix (via Gram-Schmidt orthonormalization) and
%   save it in form of txt file.
%
% Input ->
%   problemParameters : problem parameters, specified as a structure scalar.
[~, name, dimension] = poCheckProblemParameters(problemParameters);

dataFolder = 'poInputData'; % reserved word of the toolbox
if exist(dataFolder, 'dir') ~= 7
    mkdir(dataFolder);
end
dataPath = sprintf('./%s/poRotationMatrix-%s-D%d.txt', dataFolder, name, dimension);
poRotationMatrix = randn(dimension, dimension);
for i = 1 : dimension
    for j = 1 : (i - 1)
        poRotationMatrix(:, i) = poRotationMatrix(:, i) - ...
            poRotationMatrix(:, i)' * poRotationMatrix(:, j) * poRotationMatrix(:, j);
    end
    poRotationMatrix(:, i) = poRotationMatrix(:, i) / norm(poRotationMatrix(:, i));
end
save(dataPath, 'poRotationMatrix', '-ascii');
end
