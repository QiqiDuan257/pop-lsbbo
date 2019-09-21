clear; clc;

%%
figure(1);
popPlotContour('popRSFuncCigar', -5 : 5, -5 : 5);

%%
figure(2);
popPlotContour('popRSFuncCigar', -5 : 0.1 : 5, -5 : 0.1 : 5, ...
    [0 (1e4 * (1 : 2 : 7) .^ 2) (1e6 * (1 : 0.5 : 5) .^ 2)]);
