clear; clc;

%% true (1)
disp(popCheckIsPosInt(1));
disp(popCheckIsPosInt(11));
disp(popCheckIsPosInt(999));

%% false (0)
disp(popCheckIsPosInt([1 11 999]));
disp(popCheckIsPosInt(9.99));
disp(popCheckIsPosInt(0.01));
disp(popCheckIsPosInt(0));
disp(popCheckIsPosInt(-9.99));
disp(popCheckIsPosInt(-1000));
