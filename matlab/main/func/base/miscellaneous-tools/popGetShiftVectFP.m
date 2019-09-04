function shift = popGetShiftVectFP(X)
% Get the Shift Vector as the same dimensions as the input.
[funcDim, popSize] = size(X);
shift = popLoadShiftVectTxt(funcDim);
shift = repmat(shift, 1, popSize);
end
