function y = popFuncCigar_(x)
if ~isvector(x)
    error('the input should be a vector.');
end
funcDim = numel(x);
if funcDim < 2
    error('function dimension should be larger than 1.');
end
y = x(1) .^ 2 + 1e6 * sum(x(2 : funcDim) .^ 2);
end
