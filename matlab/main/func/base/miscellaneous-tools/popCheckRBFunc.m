function popCheckRBFunc(funcName, X, y, tol)
% Check the Rotated Base Function via test cases.
%
% Input ->
%   funcName : function name (char or string)
%   X        : test cases (matrix of size [funcDim * popSize])
%   y        : function values (vector)
%   tol      : error tolerance (scalar),
%              optional, default: 1e-24
if nargin < 4
    tol = 1e-24;
end

[funcDim, popSize] = size(X);
if numel(y) ~= popSize
    error('`y` should be a %d-dimensional vector.', popSize);
end
if iscolumn(y)
    y = y';
end

funcs = {funcName, ...
    sprintf('%sFP', funcName), ...
    sprintf('%sPF', funcName), ...
    sprintf('%s_', funcName)};
for f = 1 : length(funcs)
    func = funcs{f};
    funcType = func(end - 1 : end);
    if strcmp(funcType, 'PF')
        if ~popCheckIsClose(feval(func, X'), y', tol)
            error('%d-d: check %s.', funcDim, func);
        end
    elseif strcmp(funcType(end), '_')
        for t = 1 : popSize
            if ~popCheckIsClose(feval(func, X(:, t)), y(t), tol) || ...
                    ~popCheckIsClose(feval(func, X(:, t)'), y(t), tol)
                error('%d-d: check %s.', funcDim, func);
            end
        end
    else
        if ~popCheckIsClose(feval(func, X), y, tol)
            error('%d-d: check %s.', funcDim, func);
        end
    end
end

fprintf('%s: pass the test.\n', funcName);
end
