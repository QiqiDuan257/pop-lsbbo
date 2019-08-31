function shift = popGeneShiftVect(funcUB, funcLB, seed)
% Generate a uniformly distributed random Shift Vector.
%
% Input ->
%   funcUB : upper bound (column vector)
%   funcLB : lower bound (column vector)
%   seed   : seed for generating random numbers (positive integer)
% Output <-
%   shift  : shift vector between funcUB and funcLB (column vector)
if ~iscolumn(funcUB)
    error('`funcUB` should be a column vector.');
end
if ~iscolumn(funcLB)
    error('`funcLB` should be a column vector.');
end

if any(size(funcUB) ~= size(funcLB))
    error('`size(funcUB)` shoud equal `size(funcLB)`.');
end
if any(funcUB < funcLB)
    error('`funcUB` should be greater than or equal to `funcLB`.');
end

origSeed = rng(seed);
shift = unifrnd(funcLB, funcUB);
rng(origSeed);
end
