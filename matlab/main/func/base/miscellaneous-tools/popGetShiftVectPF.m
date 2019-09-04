function shift = popGetShiftVectPF(X)
% Get the Shift Vector as the same dimensions as the input.
[popSize, funcDim] = size(X);
shift = popLoadShiftVectTxt(funcDim);
shift = repmat(shift', popSize, 1);
end
