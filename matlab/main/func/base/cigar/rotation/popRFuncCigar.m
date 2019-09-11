function y = popRFuncCigar(X)
persistent popRM; % rotation matrix
funcDim = size(X, 1);
if funcDim < 2
    error('function dimension should be greater than 1.');
end
if isempty(popRM) || any(size(popRM) ~= [funcDim funcDim])
    popRM = popLoadRotationTxt(funcDim);
end
y = popFuncCigar(popRM * X);
end
