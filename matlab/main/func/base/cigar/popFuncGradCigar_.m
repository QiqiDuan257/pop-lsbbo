function [y, g] = popFuncGradCigar_(x)
y = popFuncCigar_(x);
if nargout > 1 % gradient required
    g = popGradCigar_(x);
end
end
