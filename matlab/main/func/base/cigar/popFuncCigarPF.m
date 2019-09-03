function y = popFuncCigarPF(X)
funcDim = size(X, 2);
if funcDim < 2
    error('function dimension should be greater than 1.');
end
y = X(:, 1) .^ 2 + 1e6 * sum(X(:, 2 : funcDim) .^ 2, 2);
end
