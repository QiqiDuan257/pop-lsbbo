function y = popSFuncDiscusPF(X)
persistent popSV; % shift vector
funcDim = size(X, 2);
if funcDim < 2
    error('function dimension should be greater than 1.');
end
if isempty(popSV) || (size(popSV, 2) ~= funcDim)
    popSV = popGetShiftVectPF(X);
end
y = popFuncDiscusPF(X - popSV);
end
