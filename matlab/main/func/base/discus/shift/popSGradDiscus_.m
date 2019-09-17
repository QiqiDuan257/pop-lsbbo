function g = popSGradDiscus_(x)
persistent popSV; % shift vector
if ~isvector(x)
    error('the input should be a vector.');
end
if isempty(popSV) || any(size(popSV) ~= size(x))
    popSV = popGetShiftVect(x);
end
g = popGradDiscus_(x - popSV);
end
