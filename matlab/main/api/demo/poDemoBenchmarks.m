function poDemoBenchmarks(optimizer, seedOptimization)
% Demo for running the optimizer on a set of benchmarks.
%
% Input ->
%   optimizer        : optimizer options, specified as a structure scalar.
%   seedOptimization : seed of optimization process, specified as a nonnegative integer scalar.
startTime = tic;

% unify the settings of benchmarks and optimizers
names = {'poSphere', 'poRosenbrock', 'poSchwefel221', ...
    'poEllipsoid', 'poCigar', 'poDiscus', ...
    'poAckley', 'poGriewank', 'poRastrigin'};
dimensions = [2 10 100 1000 10000];
maximumRuntimes = [5 30 60 (60 * 6) (60 * 12)] * 60; % seconds
problemParameters = cell(length(names), length(dimensions));
optimizerOptions = cell(length(names), length(dimensions));

% set seed of population initialization
originalSeed = rng(2303); % for reproducibility (MinuteSecond)
seedPopulation = randi(intmax, length(names), length(dimensions));
rng(originalSeed);

% set seed of optimization process
originalSeed = rng(seedOptimization); % for reproducibility (MinuteSecondMonthDay)
seedOptimization = randi(intmax, length(names), length(dimensions));
rng(originalSeed);

for p = 1 : size(problemParameters, 1)
    startRunTime = tic;
    fprintf('******* %s :\n', names{p});
    summarySearchResults = cell(length(dimensions), 1);
    for d = 1 : size(problemParameters, 2)
        % set problem parameters
        problemParameters{p, d} = poSetProblemParameters(names{p}, dimensions(d), 5);
        
        % set optimizer options
        optimizerOptions{p, d} = optimizer;
        optimizerOptions{p, d}.maximumEvaluations = 1e5 * dimensions(d);
        optimizerOptions{p, d}.maximumRuntime = maximumRuntimes(d);
        optimizerOptions{p, d}.thresholdFitness = 1e-10;
        optimizerOptions{p, d}.seedPopulation = seedPopulation(p, d);
        optimizerOptions{p, d}.seedOptimization = seedOptimization(p, d);
        
        % run the optimizer
        rng(optimizerOptions{p, d}.seedOptimization); % for repeatability
        summarySearchResults{d} = feval(optimizer.name, ...
            problemParameters{p, d}, optimizerOptions{p, d});
        fprintf('  | D%d: optimalFitness %9.7e, runtime %9.7e, stoppingFlag - %s.\n', ...
            dimensions(d), ...
            summarySearchResults{d}.optimalFitness, ...
            summarySearchResults{d}.runtime, ...
            summarySearchResults{d}.stoppingFlag);
    end
    
    % save search results
    startSaveTime = tic;
    dataFolder = 'poOutputData'; % reserved word of the toolbox
    if exist(dataFolder, 'dir') ~= 7
        mkdir(dataFolder);
    end
    save(sprintf('./%s/%s-%s.mat', dataFolder, names{p}, optimizer.name), ...
        'summarySearchResults', '-v7.3');
    fprintf('  $ running and saving time -> %9.7e + %7.5e seconds.\n', ...
        toc(startRunTime), toc(startSaveTime));
end

runtime = toc(startTime);
fprintf('$ - runtime - $: %9.7e seconds (%7.5E hours).\n', runtime, runtime / 3600);
end
