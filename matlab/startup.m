function startup
% Reference:
%   https://www.mathworks.com/help/matlab/ref/startup.html

% load all the *main* functions designed in the $pop-lsbbo$ library
cd('main');
addpath(genpath(pwd())); % update *search paths*
cd('..');

% print the log information when starting
isLog = true; % set to false if not print
if isLog
    libInfo = popGetLibInfo();
    fprintf([popRepChar() '\n']);
    fprintf(['#' popRepChar(13, ' ') ...
        '$$$ Enjoy the <pop-lsbbo> pure-MATLAB Library $$$' ...
        popRepChar(13, ' ') '#\n']);
    fprintf(['#' popRepChar(24, ' ') ...
        '--- version: ' libInfo.version ' ---' ...
        popRepChar(24, ' ') '#\n']);
    fprintf([popRepChar() '\n']);
end
end
