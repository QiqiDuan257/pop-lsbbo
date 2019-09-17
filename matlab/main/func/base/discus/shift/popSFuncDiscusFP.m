function y = popSFuncDiscusFP(X)
persistent popSV; % shift vector
funcDim = size(X, 1);
if funcDim < 2
    error('function dimension should be greater than 1.');
end
if isempty(popSV) || (size(popSV, 1) ~= funcDim)
    popSV = popGetShiftVectFP(X);
end
y = popFuncDiscusFP(X - popSV);
end
