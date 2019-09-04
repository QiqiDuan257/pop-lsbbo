function g = popSGradCigar_(x)
persistent popSV; % shift vector
if ~isvector(x)
    error('the input should be a vector.');
end
funcDim = numel(x);
if isempty(popSV) || any(size(popSV) ~= size(x))
    popSV = popLoadShiftVectTxt(funcDim);
    if isrow(x)
        popSV = popSV';
    end
end
g = popGradCigar_(x - popSV);
end
