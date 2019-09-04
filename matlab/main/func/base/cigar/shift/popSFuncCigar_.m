function y = popSFuncCigar_(x)
persistent popSV; % shift vector
if ~isvector(x)
    error('the input should be a vector.');
end
funcDim = numel(x);
if isempty(popSV) || any(size(popSV) ~= size(x))
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
    if isrow(x)
        popSV = popSV';
    end
end
y = popFuncCigar_(x - popSV);
end
