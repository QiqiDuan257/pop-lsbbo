function shift = popLoadShiftVectTxt(funcDim)
% Load the Shift Vector Txt file.
%
% Input ->
%   funcDim : function dimension (positive integer)
% Output <-
%   shift   : shift vector (column vector)
if ~popCheckIsPosInt(funcDim)
    error('`funcDim` should be a positive integer.');
end
folder = sprintf('/.popInputData/popShiftVector%d.txt', funcDim);
if exist(['.' folder], 'file')
    folder = ['.' folder];
elseif exist(['..' folder], 'file')
    folder = ['..' folder];
elseif exist(['../..' folder], 'file')
    folder = ['../..' folder];
else
    error('cannot find the shift vector TXT file.');
end
shift = load(folder);
if any(size(shift) ~= [funcDim 1])
    error('incorrectly load input data -> shift vector.');
end
end
