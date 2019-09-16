function isClose = popCheckIsClose(X, Y, tol)
% Check whether a matrix Is Closed to another within the error toleration.
%
% Input ->
%   X       : matrix
%   Y       : matrix
%   tol     : error toleration (scalar),
%             optional, default: 1e-24
% Output <-
%   isClose : true (1) or false (0)
if any(size(X) ~= size(Y))
    error('two matrices (`X` and `Y`) should have the same size.');
end

if nargin < 3
    tol = 1e-24;
end
if ~isscalar(tol) || ~isnumeric(tol) || (tol < 0)
    error('`tol` should be a non-negative number.');
end

isClose = abs(X - Y) < tol;
isClose = all(isClose(:));
end
