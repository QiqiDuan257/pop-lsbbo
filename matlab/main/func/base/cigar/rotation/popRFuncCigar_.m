function y = popRFuncCigar_(x)
persistent popRM; % rotation matrix
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
y = popFuncCigar_(popRM * x);
end
