function y = popRFuncCigarPF(X)
persistent popRM; % rotation matrix
funcDim = size(X, 2);
if funcDim < 2
    error('function dimension should be greater than 1.');
end
if isempty(popRM) || any(size(popRM) ~= [funcDim funcDim])
    popRM = popLoadRotationTxt(funcDim);
end
y = popFuncCigarPF((popRM * X')');
end
