function [y, g] = popRSFuncGradCigar_(x)
y = popRSFuncCigar_(x);
if nargout > 1 % gradient required
    g = popRSGradCigar_(x);
end
end
