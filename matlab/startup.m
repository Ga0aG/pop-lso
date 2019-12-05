function startup
% Reference:
%   * https://www.mathworks.com/help/matlab/ref/startup.html

% load all the *main* functions designed in the <pop-lso> toolbox
cd('main');
addpath(genpath(pwd())); % update search paths of MATLAB
cd('..');

% print the toolbox information when starting
isPrintToolboxInformation = true; % set to false if not
if isPrintToolboxInformation
    toolboxInformation = poGetToolboxInformation();
    fprintf([poRepeatCharacterScalar() '\n']);
    fprintf(['#' poRepeatCharacterScalar(14, ' ') ...
        '$$$ Enjoy the pure-MATLAB Toolbox <pop-lso> $$$' ...
        poRepeatCharacterScalar(14, ' ') '#\n']);
    fprintf(['#' poRepeatCharacterScalar(24, ' ') ...
        '--- version: ' toolboxInformation.version ' ---' ...
        poRepeatCharacterScalar(24, ' ') '#\n']);
    fprintf([poRepeatCharacterScalar() '\n']);
end
end
