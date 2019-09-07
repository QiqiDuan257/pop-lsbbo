function R = popGeneRotation(funcDim, seed)
% Generate the Rotation matrix.
%
% Input ->
%   funcDim : function dimension (positive integer)
%   seed    : seed for generating random numbers (positive integer)
% Output <-
%   R       : rotation matrix
if ~popCheckIsPosInt(funcDim)
    error('`funcDim` should be a positive integer.');
end

origSeed = rng(seed);
R = randn(funcDim, funcDim);
rng(origSeed);
for i = 1 : funcDim
    for j = 1 : (i - 1)
        R(:, i) = R(:, i) - R(:, i)' * R(:, j) * R(:, j);
    end
    R(:, i) = R(:, i) / norm(R(:, i));
end
end
