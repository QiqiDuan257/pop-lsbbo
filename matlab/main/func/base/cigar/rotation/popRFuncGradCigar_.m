function [y, g] = popRFuncGradCigar_(x)
y = popRFuncCigar_(x);
if nargout > 1 % gradient required
    g = popRGradCigar_(x);
end
end
