function y = popSFuncCigarPF(X)
persistent popSV; % shift vector
[popSize, funcDim] = size(X);
if funcDim < 2
    error('function dimension should be greater than 1.');
end
if isempty(popSV) || (size(popSV, 2) ~= funcDim)
    popSV = popLoadShiftVectTxt(funcDim);
    popSV = repmat(popSV', popSize, 1);
end
y = popFuncCigarPF(X - popSV);
end
