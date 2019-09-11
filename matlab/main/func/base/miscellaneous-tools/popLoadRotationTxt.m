function R = popLoadRotationTxt(funcDim)
% Load the Rotation matrix Txt file.
%
% Input ->
%   funcDim : function dimension (positive integer)
% Output <-
%   R       : rotation matrix
if ~popCheckIsPosInt(funcDim)
    error('`funcDim` should be a positive integer.');
end
folder = sprintf('/.popInputData/popRotation%d.txt', funcDim);
if exist(['.' folder], 'file')
    folder = ['.' folder];
elseif exist(['..' folder], 'file')
    folder = ['..' folder];
elseif exist(['../..' folder], 'file')
    folder = ['../..' folder];
else
    error('cannot find the rotation matrix TXT file.');
end
R = load(folder);
if any(size(R) ~= [funcDim funcDim])
    error('incorrectly load input data -> rotation matrix.');
end
end
