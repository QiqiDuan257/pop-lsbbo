function y = popSFuncCigarPF(X)
persistent popSV; % shift vector
[popSize, funcDim] = size(X);
if funcDim < 2
    error('function dimension should be greater than 1.');
end
if isempty(popSV) || (size(popSV, 2) ~= funcDim)
    popSV = load(sprintf('../.popInputData/popShiftVector%d.txt', funcDim));
    if any(size(popSV) ~= [funcDim 1])
        error('incorrectly load input data -> shift vector.');
    end
    popSV = repmat(popSV', popSize, 1);
end
y = popFuncCigarPF(X - popSV);
end
