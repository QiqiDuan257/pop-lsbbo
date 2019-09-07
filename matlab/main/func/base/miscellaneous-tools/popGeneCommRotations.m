function Rs = popGeneCommRotations(seed, funcDims)
% Generate Common Rotation matrices.
%
% Input ->
%   seed     : seed for generating random numbers (non-negative integer)
%   funcDims : function dimensions (vector)
% Output <-
%   Rs       : rotation matrices (cell)
startRun = tic;
if nargin < 2
    funcDims = [popGeneCommFuncDims() 100000];
end
if ~isvector(funcDims) || ~isnumeric(funcDims)
    error('`funcDims` should be a vector.');
end

Rs = cell(length(funcDims), 1);
for d = 1 : length(funcDims)
    startRunD = tic;
    funcDim = funcDims(d);
    R = popGeneRotation(funcDim, seed + d);
    save(sprintf('popRotation%d.txt', funcDim), 'R', '-ascii');
    save(sprintf('popRotation%d.mat', funcDim), 'R', '-v7.3');
    fprintf('%6d: runtime %7.2e.\n', funcDim, toc(startRunD));
    Rs{d} = R;
end
fprintf('Total runtime: %7.5e.\n', toc(startRun));
end
