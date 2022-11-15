
close all;

rng(1);

test1 = randi(20,[20,6]);

f = figure; t = tiledlayout(1,2,'TileSpacing','loose');

nexttile;

[~,lgdObject] = boxPlot(test1,...
                        groupSize = 3,...
                        labelGroup = false,...
                        boxLabels = {1,2,3,4,5,6},...
                        boxColors = {[0.9,0.7,0.7],[0.9,0.7,0.9],[0.7,0.7,0.9],[0.9,0.7,0.7],[0.9,0.7,0.9],[0.7,0.7,0.9]},...
                        plotLegend = true,...
                        lgdLabels = {'Test 1','Test Test','Test 3','Test 4','Test 5','Test 6'},...
                        lgdColors = {[0.9,0.7,0.7],[0.9,0.7,0.9],[0.7,0.7,0.9],[0.9,0.7,0.7],[0.9,0.7,0.9],[0.7,0.7,0.9]},...
                        lgdColumns = 2,...
                        lgdLineHeight = 1,...
                        lgdLineWidth = 0.25,...
                        lgdFontSize = 12,...
                        lgdLocation = 'southwest',...
                        plotPoints = true,...
                        pointSize = 50,...
                        pointColors = {[0,0,0]},...
                        plotLines = true,...
                        lineColors = {[0,0,0]},...
                        lineWidth = 1,...
                        boxSpacing = 1);

yline(0,'--k','LineWidth',1);

ylim([-9,25]); yticks(-8:2:24);

test2 = randn([100,6]);

nexttile;

% tic;

[~,lgdObject2] = boxPlot(test2,...
                         groupSize = 3,...
                         labelGroup = false,...
                         plotPoints = true,...
                         pointColors = {'default'},...
                         pointJitter = 'rand',...
                         lgdLabels = {'Test 1','Test Test','Test 3'},...
                         lgdColors = {[0.9,0.7,0.7],[0.9,0.7,0.9],[0.7,0.7,0.9]},...
                         lgdColumns = 2,...
                         lgdLineHeight = 1,...
                         lgdLineWidth = 0.5,...
                         lgdFontSize = 12,...
                         lgdLocation = 'southwest');

% toc;

yline(0,'--k','LineWidth',1);

ylim([-4,4]); yticks(-8:2:24);

f.Position = [371 269 627 357];
