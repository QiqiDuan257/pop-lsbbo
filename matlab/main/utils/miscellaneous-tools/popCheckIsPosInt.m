function isPosInt = popCheckIsPosInt(x)
% Check whether the input is a Positive Integer.
%
% Input ->
%   x        : any object
% Output <-
%   isPosInt : true (1) if the input is a positive integer,
%              otherwise false (0)
isPosInt = isscalar(x) && isnumeric(x) && ...
    (floor(x) == x) && (x == ceil(x)) && (x > 0);
end
