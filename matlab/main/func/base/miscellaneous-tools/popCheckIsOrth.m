function isOrth = popCheckIsOrth(X, tol)
% Check whether the input is an Orthogonal matrix.
%
% Input ->
%   X      : square matrix
%   tol    : error tolerance (a non-negative number),
%            default: 1e-6
% Output <-
%   isOrth : true (1) if `X` is an orthogonal matrix,
%            otherwise false (0)
if size(X, 1) ~= size(X, 2)
    error('`X` should be a square matrix.');
end
if nargin < 2
    tol = 1e-6;
end
if ~isscalar(tol) || ~isnumeric(tol) || (tol < 0)
    error('`tol` should be a non-negative number.');
end

condA = abs(X * X' - eye(size(X))) < tol;
condB = abs(X' * X - eye(size(X))) < tol;
condC = abs(sum(X .^ 2, 1) - 1) < tol;
condD = abs(sum(X .^ 2, 2) - 1) < tol;
condE = rank(X) == size(X, 1);
detX = det(X);
condF = (abs(detX - 1) < tol) || (abs(detX + 1) < tol);

if all(condA(:)) && all(condB(:)) && ...
        all(condC(:)) && all(condD(:)) && ...
        condE && condF
    isOrth = true;
else
    isOrth = false;
end
end
