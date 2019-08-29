function y = popFuncWarga(X)
% Warga, J., 1963. Minimizing certain convex functions.
% Journal of the Society for Industrial and Applied Mathematics,
% 11(3), pp.588-593.
if size(X, 1) ~= 2
    error('function dimension should equal 2.');
end
y = abs(X(1, :) - X(2, :)) - min(X, [], 1);
end
