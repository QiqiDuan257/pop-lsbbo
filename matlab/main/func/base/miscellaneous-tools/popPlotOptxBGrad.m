function popPlotOptxBGrad(optRes, funcDims)
% Plot Gradient obtained on the Base Function.
if length(optRes) ~= length(funcDims)
    error('`length(optRes)` should equal `length(funcDims)`.');
end
startRun = tic;
fprintf([popRepChar(14) ' *** plot grad *** ' popRepChar(14) '\n']);
for d = 1 : length(optRes)
    subplot(3, 3, d);
    plot(optRes{d}.grad, 'm.');
    title(funcDims(d));
    xlabel('Dimension index'); ylabel('grad');
end
fprintf('Total runtime: %7.5e.\n', toc(startRun));
end
