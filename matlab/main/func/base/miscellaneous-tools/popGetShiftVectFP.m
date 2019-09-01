function shift = popGetShiftVectFP(X)
% Get the Shift Vector.
[funcDim, popSize] = size(X);
shift = load(sprintf('../.popInputData/popShiftVector%d.txt', funcDim));
if any(size(shift) ~= [funcDim 1])
    error('incorrectly load input data -> shift vector.');
end
shift = repmat(shift, 1, popSize);
end
