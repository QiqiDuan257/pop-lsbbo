function g = popRGradCigar_(x)
persistent popRM; % rotation matrix
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
g = popRM' * popGradCigar_(popRM * x);
if isRowVect
    g = g';
end
end
