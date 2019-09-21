function y = popRSFuncCigar_(x)
persistent popRM popSV; % rotation matrix + shift vector
if ~isvector(x)
    error('the input should be a vector.');
end
if isrow(x)
    x = x';
end
funcDim = numel(x);
if isempty(popRM) || any(size(popRM) ~= [funcDim funcDim])
    popRM = popLoadRotationTxt(funcDim);
end
if isempty(popSV) || any(size(popSV) ~= size(x))
    popSV = popGetShiftVect(x);
end
y = popFuncCigar_(popRM * (x - popSV));
end
