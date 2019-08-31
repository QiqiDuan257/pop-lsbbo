clear; clc;

%%
disp(popFuncWarga_([0 0])); % 0
disp(popFuncWarga(zeros(2, 3))); % 0 0 0
disp(popFuncWargaFP(zeros(2, 3))); % 0 0 0
disp(popFuncWargaPF(zeros(3, 2))'); % 0 0 0

%%
disp(popFuncWarga_([1 1])); % -1
disp(popFuncWarga(ones(2, 4))); % -1 -1 -1 -1
disp(popFuncWargaFP(ones(2, 4))); % -1 -1 -1 -1
disp(popFuncWargaPF(ones(4, 2))'); % -1 -1 -1 -1

%%
disp(popFuncWarga_([1 -1]')); % 3
disp(popFuncWarga(repmat([1 -1]', 1, 4))); % 3 3 3 3
disp(popFuncWargaFP(repmat([1 -1]', 1, 4))); % 3 3 3 3
disp(popFuncWargaPF(repmat([1 -1], 4, 1))'); % 3 3 3 3

%%
disp(popFuncWarga_([-1 1]')); % 3
disp(popFuncWarga(repmat([-1 1]', 1, 4))); % 3 3 3 3
disp(popFuncWargaFP(repmat([-1 1]', 1, 4))); % 3 3 3 3
disp(popFuncWargaPF(repmat([-1 1], 4, 1))'); % 3 3 3 3

%%
disp(popFuncWarga_([-1 -1]')); % 1
disp(popFuncWarga(repmat([-1 -1]', 1, 4))); % 1 1 1 1
disp(popFuncWargaFP(repmat([-1 -1]', 1, 4))); % 1 1 1 1
disp(popFuncWargaPF(repmat([-1 -1], 4, 1))'); % 1 1 1 1

%%
disp(popFuncWarga_([0.5 -0.5]')); % 1.5
disp(popFuncWarga(repmat([0.5 -0.5]', 1, 4))); % 1.5 1.5 1.5 1.5
disp(popFuncWargaFP(repmat([0.5 -0.5]', 1, 4))); % 1.5 1.5 1.5 1.5
disp(popFuncWargaPF(repmat([0.5 -0.5], 4, 1))'); % 1.5 1.5 1.5 1.5
