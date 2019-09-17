function [y, g] = popSFuncGradDiscus_(x)
y = popSFuncDiscus_(x);
if nargout > 1 % gradient required
    g = popSGradDiscus_(x);
end
end
