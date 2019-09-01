function shift = popGetShiftVectPF(X)
% Get the Shift Vector.
[popSize, funcDim] = size(X);
shift = load(sprintf('../.popInputData/popShiftVector%d.txt', funcDim));
if any(size(shift) ~= [funcDim 1])
    error('incorrectly load input data -> shift vector.');
end
shift = repmat(shift', popSize, 1);
end
