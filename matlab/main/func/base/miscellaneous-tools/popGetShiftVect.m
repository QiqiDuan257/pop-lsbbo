function shift = popGetShiftVect(x)
% Get the Shift Vector.
if ~isvector(x)
    error('the input should be a vector.');
end
funcDim = numel(x);
shift = load(sprintf('../.popInputData/popShiftVector%d.txt', funcDim));
if any(size(shift) ~= [funcDim 1])
    error('incorrectly load input data -> shift vector.');
end
if isrow(x)
    shift = shift';
end
end
