function g = popGradCigar_(x)
if ~isvector(x)
    error('the input should be a vector.');
end
funcDim = numel(x);
if funcDim < 2
    error('function dimension should be greater than 1.');
end
if iscolumn(x)
    g = cat(1, 2 * x(1), 2e6 * x(2 : funcDim));
else
    g = cat(2, 2 * x(1), 2e6 * x(2 : funcDim));
end
end
