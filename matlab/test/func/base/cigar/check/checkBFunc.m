clear; clc;

funcName = 'popFuncCigar';

%%
X = popGetTestCases(2);
y = [4000004 1000001 0 1000001 4000004];
popCheckBFunc(funcName, X, y);

%%
X = popGetTestCases(3);
y = [8000004 2000001 0 2000001 8000004];
popCheckBFunc(funcName, X, y);

%%
X = popGetTestCases(4);
y = [0 3000001 3000001 3000001 29000001 29000001 14000016];
popCheckBFunc(funcName, X, y);

%%
X = popGetTestCases(5);
y = [0 4000001 4000001 4000001 54000001 54000001 30000025];
popCheckBFunc(funcName, X, y);

%%
X = popGetTestCases(6);
y = [0 5000001 5000001 5000001 90000001 90000001 55000036];
popCheckBFunc(funcName, X, y);

%%
X = popGetTestCases(7);
y = [0 6000001 6000001 6000001 139000001 139000001 91000049 91000000];
popCheckBFunc(funcName, X, y);

%% function dimension should be larger than 1.
popFuncCigar(popGetTestCases(1));
