function y = popRSFuncCigarPF(X)
persistent popRM popSV; % rotation matrix + shift vector
funcDim = size(X, 2);
if funcDim < 2
    error('function dimension should be greater than 1.');
end
if isempty(popRM) || any(size(popRM) ~= [funcDim funcDim])
    popRM = popLoadRotationTxt(funcDim);
end
if isempty(popSV) || (size(popSV, 2) ~= funcDim)
    popSV = popGetShiftVectPF(X);
end
y = popFuncCigarPF((popRM * (X - popSV)')');
end
