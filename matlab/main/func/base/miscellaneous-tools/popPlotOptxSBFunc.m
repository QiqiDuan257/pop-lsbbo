function popPlotOptxSBFunc(optRes, funcDims)
% Plot Optx obtained on the Shifted Base Function.
if length(optRes) ~= length(funcDims)
    error('`length(optRes)` should equal `length(funcDims)`.');
end
startRun = tic;
fprintf([popRepChar(14) ' *** plot shifted optx *** ' popRepChar(14) '\n']);
for d = 1 : length(optRes)
    subplot(3, 3, d);
    plot(optRes{d}.optx - popGetShiftVect(optRes{d}.optx), 'm.');
    title(funcDims(d));
    xlabel('Dimension index'); ylabel('optx');
end
fprintf('Total runtime: %7.5e.\n', toc(startRun));
end
