function popCheckCommRotations(funcDims, tol)
% Check Common Rotation matrices.
%
% Input ->
%   funcDims : function dimensions (vector)
%   tol      : error tolerance (a non-negative number),
%              default: 1e-6
startRun = tic;
if nargin < 1
    funcDims = [popGeneCommFuncDims() 100000];
end
if ~isvector(funcDims) || ~isnumeric(funcDims)
    error('`funcDims` should be a vector.');
end
if nargin < 2
    tol = 1e-6;
end

for d = 1 : length(funcDims)
    startRunD = tic;
    funcDim = funcDims(d);
    RTxt = load(sprintf('popRotation%d.txt', funcDim));
    RMat = load(sprintf('popRotation%d.mat', funcDim));
    if ~popCheckIsClose(RTxt, RMat.R, tol)
        error('`RTxt` should equal `RMat`.');
    end
    isOrthTxt = popCheckIsOrth(RTxt, tol);
    isOrthMat = popCheckIsOrth(RMat.R, tol);
    fprintf('%6d: isOrthTxt %d isOrthMat %d - runtime %7.2e.\n', ...
        funcDim, isOrthTxt, isOrthMat, toc(startRunD));
end
fprintf('Total runtime: %7.5e.\n', toc(startRun));
end
