function popCheckCommGradRBFunc(funcName, tol)
% Check the Common Gradient of Rotated Base Function via test cases.
%
% Input ->
%   funcName : function name (char or string)
%   tol      : error tolerance (scalar),
%              optional, default: 1e-24
startRun = tic;
if nargin < 2
    tol = 1e-24;
end
funcDims = [3 : 7 popGeneCommFuncDims()];
for d = 1 : length(funcDims)
    startRunD = tic;
    funcDim = funcDims(d);
    popCheckGradBFunc(funcName, zeros(funcDim, 9), zeros(funcDim, 9), tol);
    fprintf('%6d: runtime %7.2e.\n', funcDim, toc(startRunD));
end
fprintf('Total runtime: %7.5e.\n', toc(startRun));
end
