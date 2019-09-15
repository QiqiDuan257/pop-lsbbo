function [y, g] = popFuncGradDiscus_(x)
y = popFuncDiscus_(x);
if nargout > 1 % gradient required
    g = popGradDiscus_(x);
end
end
