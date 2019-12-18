function poManuallyCheckBenchmark(name, X, y, isShifted)
% Manually check the benchmark function.
%
% Input ->
%   name      : Function name, specified as a character vector or a string scalar.
%   X         : Population, specified as a matrix whose row and column size
%               equal function dimension (F) and population size (P), respectively.
%               Each column of X denotes an independent individual in the population.
%   y         : Fitness, specified as a row vector whose length is population size.
%               Each element of y is the fitness of each individual (column) of X.
%   isShifted : Whether the function is shifted, specified as a boolean scalar.
%               If no value is specified, then the default is false.
if nargin < 4
    isShifted = false;
end

tols = [1e-12 1e-9 1e-6 1e-3 1e-2 1e-1];
isPass = false;
for t = 1 : numel(tols)
    tol = tols(t);
    if poCheckBenchmarkManually(name, X, y, tol, isShifted)
        isPass = true;
        break;
    end
end
if isPass
    fprintf('%s : pass the manual checking within the tolerance `%5.2e`.\n', name, tol);
else
    fprintf('%s : NOT pass the manual checking within the tolerance `%5.2e`.\n', name, tol);
end
end
