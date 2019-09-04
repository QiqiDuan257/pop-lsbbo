function y = popSFuncCigar(X)
persistent popSV; % shift vector
[funcDim, popSize] = size(X);
if funcDim < 2
    error('function dimension should be greater than 1.');
end
if isempty(popSV) || (size(popSV, 1) ~= funcDim)
    popSV = popLoadShiftVectTxt(funcDim);
    popSV = repmat(popSV, 1, popSize);
end
y = popFuncCigar(X - popSV);
end
