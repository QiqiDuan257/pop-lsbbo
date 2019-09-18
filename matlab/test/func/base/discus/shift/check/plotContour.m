clear; clc;

%%
figure(1);
popPlotContour('popSFuncDiscus', -5 : 5, -5 : 5);

%%
figure(2);
popPlotContour('popSFuncDiscus', -5 : 5, -5 : 5, 1e6 * (0 : 0.5 : 5) .^ 2);
