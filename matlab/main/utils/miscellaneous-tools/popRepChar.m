function chars = popRepChar(varargin)
% Repeat the Char symbol.
%
% Input ->
%   symbol   : the symbol repeated (char scalar)
%              optional, default: '#'
%   repTimes : repeat times (int scalar)
%              optional, default: 77
% Output <-
%   chars    : an array of the repeated char symbol (row vector)
if nargin == 0
    repTimes = 77; % just a number preferred by the designer
    symbol = '#'; % just a symbol preferred by the designer
elseif nargin == 1
    repTimes = varargin{1};
    symbol = '#';
elseif nargin == 2
    repTimes = varargin{1};
    symbol = varargin{2};
else
    error('accept at most two inputs.');
end

if ~ischar(symbol)
    error('`symbol` should be of char type.');
end
chars = repmat(symbol, 1, repTimes);
end
