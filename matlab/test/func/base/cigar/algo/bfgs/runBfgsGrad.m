clear; clc;

% nohup matlab -nodesktop -nodisplay -nosplash <runBfgsGrad.m >runBfgsGrad.out 2>&1 &

%%
startRun = tic;
randSeed = 20190818; % for reproducibility
funcName = 'popFuncGradCigar_';
funcDims = [2 10 100 1000 2000 4000 6000 8000 10000]';
% funcDims = [2 10]';
optRes = cell(length(funcDims), 1);
for d = 1 : length(funcDims)
    startRunD = tic;
    funcDim = funcDims(d);
    maxFEval = 1e5 * funcDim;
    rng(randSeed + d);
    x0 = -100 + 100 * rand(funcDim, 1);
    options = optimoptions(@fminunc, ...
        'Algorithm', 'quasi-newton', ...
        'SpecifyObjectiveGradient', true, ...
        'MaxFunctionEvaluations', maxFEval, ...
        'MaxIterations', maxFEval, ...
        'ObjectiveLimit', 1e-10, ...
        'Display', 'off');
    [x, y, exitFlag, output, grad, hessian] = fminunc(...
        funcName, x0, options);
    res = {};
    res.opty = y;
    res.optx = x;
    res.exitFlag = exitFlag;
    res.output = output;
    res.grad = grad;
    res.hessian = hessian;
    optRes{d} = res;
    fprintf(sprintf('%6d: opty %7.2e + runtime %7.2e.\n', ...
        funcDim, y, toc(startRunD)));
end
save('runBfgsGrad.mat', 'optRes', 'funcDims', '-v7.3');
fprintf(sprintf('Total runtime: %7.5e.\n', toc(startRun)));
