function y = popFuncDiscusPF(X)
funcDim = size(X, 2);
if funcDim < 2
    error('function dimension should be greater than 1.');
end
y = 1e6 * X(:, 1) .^ 2 + sum(X(:, 2 : funcDim) .^ 2, 2);
end
