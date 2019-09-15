clear; clc;

funcName = 'popFuncDiscus';

%%
X = popGetTestCases(2);
y = [4000004 1000001 0 1000001 4000004];
popCheckBFunc(funcName, X, y);

%%
X = popGetTestCases(3);
y = [4000008 1000002 0 1000002 4000008];
popCheckBFunc(funcName, X, y);

%%
X = popGetTestCases(4);
y = [0 1000003 1000003 1000003 1000029 1000029 16000014];
popCheckBFunc(funcName, X, y);

%%
X = popGetTestCases(5);
y = [0 1000004 1000004 1000004 1000054 1000054 25000030];
popCheckBFunc(funcName, X, y);

%%
X = popGetTestCases(6);
y = [0 1000005 1000005 1000005 1000090 1000090 36000055];
popCheckBFunc(funcName, X, y);

%%
X = popGetTestCases(7);
y = [0 1000006 1000006 1000006 1000139 1000139 49000091 91];
popCheckBFunc(funcName, X, y);

%% function dimension should be greater than 1.
feval(funcName, popGetTestCases(1));
