function popCheckGradBFunc(funcName, X, G, tol)
% Check the Gradient of Base Function via test cases.
%
% Input ->
%   funcName : function name (char or string)
%   X        : test cases (matrix of size [funcDim * popSize])
%   G        : gradients (matrix of size [funcDim * popSize])
%   tol      : error tolerance (scalar),
%              optional, default: 1e-24
if nargin < 4
    tol = 1e-24;
end

[funcDim, popSize] = size(X);
if any(size(X) ~= size(G))
    error('two matrices should have the same size.');
end

for t = 1 : popSize
    if ~popCheckIsClose(feval(funcName, X(:, t)), G(:, t), tol) || ...
            ~popCheckIsClose(feval(funcName, X(:, t)'), G(:, t)', tol)
        error('%d-d: check %s.', funcDim, funcName);
    end
end

fprintf('%s: pass the test.\n', funcName);
end
