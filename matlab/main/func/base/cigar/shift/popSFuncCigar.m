function y = popSFuncCigar(X)
persistent popSV; % shift vector
[funcDim, popSize] = size(X);
if funcDim < 2
    error('function dimension should be greater than 1.');
end
if isempty(popSV) || (size(popSV, 1) ~= funcDim)
    folder = sprintf('/.popInputData/popShiftVector%d.txt', funcDim);
    if exist(['.' folder], 'file')
        folder = ['.' folder];
    elseif exist(['..' folder], 'file')
        folder = ['..' folder];
    elseif exist(['../..' folder], 'file')
        folder = ['../..' folder];
    else
        error('cannot find the txt file.');
    end
    popSV = load(folder);
    if any(size(popSV) ~= [funcDim 1])
        error('incorrectly load input data -> shift vector.');
    end
    popSV = repmat(popSV, 1, popSize);
end
y = popFuncCigar(X - popSV);
end
