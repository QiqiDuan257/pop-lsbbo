function y = popFuncCigarFP(X)
funcDim = size(X, 1);
if funcDim < 2
    error('function dimension should be greater than 1.');
end
y = X(1, :) .^ 2 + 1e6 * sum(X(2 : funcDim, :) .^ 2, 1);
end
