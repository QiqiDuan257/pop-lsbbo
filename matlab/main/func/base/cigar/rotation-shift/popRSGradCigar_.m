function g = popRSGradCigar_(x)
persistent popRM popSV; % rotation matrix + shift vector
if ~isvector(x)
    error('the input should be a vector.');
end
if isrow(x)
    x = x';
    isRowVect = true;
else
    isRowVect = false;
end
funcDim = numel(x);
if isempty(popRM) || any(size(popRM) ~= [funcDim funcDim])
    popRM = popLoadRotationTxt(funcDim);
end
if isempty(popSV) || any(size(popSV) ~= size(x))
    popSV = popGetShiftVect(x);
end
g = popRM' * popGradCigar_(popRM * (x - popSV));
if isRowVect
    g = g';
end
end
