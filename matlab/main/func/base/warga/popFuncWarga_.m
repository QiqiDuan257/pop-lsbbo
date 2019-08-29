function y = popFuncWarga_(x)
% Warga, J., 1963. Minimizing certain convex functions.
% Journal of the Society for Industrial and Applied Mathematics,
% 11(3), pp.588-593.
if ~isvector(x) || numel(x) ~= 2
    error('function dimension should equal 2.');
end
y = abs(x(1) - x(2)) - min(x);
end
