function shift = popGetShiftVect(x)
% Get the Shift Vector as the same dimensions as the input.
if ~isvector(x)
    error('the input should be a vector.');
end
funcDim = numel(x);
shift = popLoadShiftVectTxt(funcDim);
if isrow(x)
    shift = shift';
end
end
