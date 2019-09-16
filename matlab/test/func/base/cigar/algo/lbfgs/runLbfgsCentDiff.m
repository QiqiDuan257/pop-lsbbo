clear; clc;

% nohup matlab -nodesktop -nodisplay -nosplash <runLbfgsCentDiff.m >runLbfgsCentDiff.out 2>&1 &

%% load the `minFunc` library, which is downloaded from
%   https://www.cs.ubc.ca/~schmidtm/Software/minFunc.html
%   https://www.cs.ubc.ca/~schmidtm/Software/copyright.html
%   https://www.cs.ubc.ca/~schmidtm/Software/minFunc_2012.zip
% first put runLbfgsCentDiff.m in the working directory of the `minFunc` library
addpath(genpath(pwd));

%%
startRun = tic;
randSeed = 20190818; % for reproducibility
funcName = @popFuncCigar_;
funcDims = [2 10 100 1000 2000 4000 6000 8000 10000]';
% funcDims = [2 10]';
optRes = cell(length(funcDims), 1);
for d = 1 : length(funcDims)
    startRunD = tic;
    funcDim = funcDims(d);
    maxFEval = 1e5 * funcDim;
    rng(randSeed + d);
    x0 = -100 + 100 * rand(funcDim, 1);
    options = [];
    options.Method = 'lbfgs';
    options.numDiff = 2; % central-differencing
    options.MaxFunEvals = maxFEval;
    options.MaxIter = maxFEval;
    options.Display = 'off';
    [x, y, exitFlag, output] = minFunc(funcName, x0, options);
    res = {};
    res.opty = y;
    res.optx = x;
    res.exitFlag = exitFlag;
    res.output = output;
    optRes{d} = res;
    fprintf('%6d: opty %7.2e + runtime %7.2e.\n', ...
        funcDim, y, toc(startRunD));
end
save('runLbfgsCentDiff.mat', 'optRes', 'funcDims', '-v7.3');
fprintf('Total runtime: %7.5e.\n', toc(startRun));
