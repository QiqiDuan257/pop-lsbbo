function y = popSFuncCigarFP(X)
persistent popSV; % shift vector
[funcDim, popSize] = size(X);
if funcDim < 2
    error('function dimension should be greater than 1.');
end
if isempty(popSV) || (size(popSV, 1) ~= funcDim)
    popSV = load(sprintf('../.popInputData/popShiftVector%d.txt', funcDim));
    if any(size(popSV) ~= [funcDim 1])
        error('incorrectly load input data -> shift vector.');
    end
    popSV = repmat(popSV, 1, popSize);
end
y = popFuncCigarFP(X - popSV);
end