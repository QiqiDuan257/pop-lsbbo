function [y, g] = popSFuncGradCigar_(x)
y = popSFuncCigar_(x);
if nargout > 1 % gradient required
    g = popSGradCigar_(x);
end
end
