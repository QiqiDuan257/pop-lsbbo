clear; clc;

%%
fprintf([popRepChar() '\n']);
% #############################################################################
fprintf([popRepChar(7) '\n']);
% #######
fprintf([popRepChar(5, '*') '\n']);
% *****
fprintf([popRepChar(5, '**') '\n']);
% **********

%% `symbol` should be of char type.
popRepChar(5, 123);

%% accept at most two inputs.
popRepChar(5, '*', '');
