function popPlotContour(funcName, x, y, levels)
% Plot the Contour of the base function.
%
% Input ->
%   funcName: function name (char or string)
%   x       : x-coordinates (vector)
%   y       : y-coordinates (vector)
%   levels  : contour levels (vector)
%
% Reference:
%   https://www.mathworks.com/help/matlab/ref/contourf.html
if ~isvector(x)
    error('the input `x` should be a vector.');
end
if ~isvector(y)
    error('the input `y` should be a vector.');
end

if nargin < 4
    isShowLevel = false;
else
    isShowLevel = true;
end

[X, Y] = meshgrid(x, y);
Z = Inf * ones(size(X));
for r = 1 : size(X, 1)
    for c = 1 : size(X, 2)
        Z(r, c) = feval(funcName, [X(r, c), Y(r, c)]');
    end
end

if isShowLevel
    [C, h] = contourf(X, Y, Z, levels, ...
        'ShowText', 'on', 'EdgeColor', 'white', 'LineWidth', 1.75);
    clabel(C, h, 'FontSize', 12, 'Color', 'white');
else
    contourf(X, Y, Z, 'EdgeColor', 'white', 'LineWidth', 1.75);
end
colormap(cool); shading interp;
title(funcName); xlabel('x_1'); ylabel('x_2');
end
