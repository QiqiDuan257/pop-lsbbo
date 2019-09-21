function y = popRSFuncCigar(X)
persistent popRM popSV; % rotation matrix + shift vector
funcDim = size(X, 1);
if funcDim < 2
    error('function dimension should be greater than 1.');
end
if isempty(popRM) || any(size(popRM) ~= [funcDim funcDim])
    popRM = popLoadRotationTxt(funcDim);
end
if isempty(popSV) || (size(popSV, 1) ~= funcDim)
    popSV = popGetShiftVectFP(X);
end
y = popFuncCigar(popRM * (X - popSV));
end
