function shifts = popGeneCommShiftVects(funcUB, funcLB, seed, funcDims)
% Generate Common Shift Vectors.
%
% Input ->
%   funcUB   : upper bound (scalar)
%   funcLB   : lower bound (scalar)
%   seed     : seed for generating random numbers (non-negative integer)
%   funcDims : function dimensions (vector)
% Output <-
%   shifts   : shift vector between funcUB and funcLB (cell)
startRun = tic;
if nargin < 4
    funcDims = [popGeneCommFuncDims() 100000];
end

if ~isscalar(funcUB) || ~isnumeric(funcUB)
    error('`funcUB` should be a numeric scalar.');
end
if ~isscalar(funcLB) || ~isnumeric(funcLB)
    error('`funcLB` should be a numeric scalar.');
end
if funcUB < funcLB
    error('`funcUB` should be greater than or equal to `funcLB`.');
end
if ~isscalar(seed) || ~isnumeric(seed) || (seed < 0)
    error('`seed` should be a non-negative integer.');
end
if ~isvector(funcDims) || ~isnumeric(funcDims)
    error('`funcDims` should be a vector.');
end

shifts = cell(length(funcDims), 1);
for d = 1 : length(funcDims)
    startRunD = tic;
    funcDim = funcDims(d);
    UB = funcUB * ones(funcDim, 1);
    LB = funcLB * ones(funcDim, 1);
    shift = popGeneShiftVect(UB, LB, seed + d);
    if any(shift > UB) || any(shift < LB)
        error('out of upper or lower bound.');
    end
    save(sprintf('popShiftVector%d.txt', funcDim), 'shift', '-ascii');
    save(sprintf('popShiftVector%d.mat', funcDim), 'shift', '-v7.3');
    fprintf('%6d: runtime %7.2e.\n', funcDim, toc(startRunD));
    shifts{d} = shift;
end
fprintf('Total runtime: %7.5e.\n', toc(startRun));
end
