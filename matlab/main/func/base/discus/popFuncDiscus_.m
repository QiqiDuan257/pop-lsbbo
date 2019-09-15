function y = popFuncDiscus_(x)
if ~isvector(x)
    error('the input should be a vector.');
end
funcDim = numel(x);
if funcDim < 2
    error('function dimension should be greater than 1.');
end
y = 1e6 * x(1) .^ 2 + sum(x(2 : funcDim) .^ 2);
end
