function y = popFuncDiscus(X)
funcDim = size(X, 1);
if funcDim < 2
    error('function dimension should be greater than 1.');
end
y = 1e6 * X(1, :) .^ 2 + sum(X(2 : funcDim, :) .^ 2, 1);
end
