clear; clc;

% nohup matlab -nodesktop -nodisplay -nosplash <geneCommShiftVects.m >geneCommShiftVects.out 2>&1 &

%%
shifts = popGeneCommShiftVects(4.5, -4.5, 20190901);
% popGeneCommShiftVects(4.5, -4.5, 20190901, 3 : 7);
