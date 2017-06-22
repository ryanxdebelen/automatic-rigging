figure
hold on
trisurf(newfaces, vertices(:,1), vertices(:,2), vertices(:,3),'FaceColor', [0.26,0.33,1.0 ],'FaceAlpha', 0.2,'FaceLighting','phong');
light('Position',[-1.0,-1.0,100.0],'Style','infinite');
lighting phong;
axis equal
scatter3(jointlocation(:,1),jointlocation(:,2), jointlocation(:,3), 100, 'wh', 'MarkerFaceColor', 'r');
% left foot to left leg
line([jointlocation(1,1) jointlocation(18,1)], [jointlocation(1,2) jointlocation(18,2)], [jointlocation(1,3) jointlocation(18,3)], 'LineWidth', 7, 'Color', 'g');
% left leg to left hip
line([jointlocation(17,1) jointlocation(18,1)], [jointlocation(17,2) jointlocation(18,2)], [jointlocation(17,3) jointlocation(18,3)], 'LineWidth', 7, 'Color', 'g');

% left foot to left leg
line([jointlocation(16,1) jointlocation(17,1)], [jointlocation(16,2) jointlocation(17,2)], [jointlocation(16,3) jointlocation(17,3)], 'LineWidth', 7, 'Color', 'g');
% left leg to left hip
line([jointlocation(15,1) jointlocation(16,1)], [jointlocation(15,2) jointlocation(16,2)], [jointlocation(15,3) jointlocation(16,3)], 'LineWidth', 7, 'Color', 'g');

% left foot to left leg
line([jointlocation(14,1) jointlocation(15,1)], [jointlocation(14,2) jointlocation(15,2)], [jointlocation(14,3) jointlocation(15,3)], 'LineWidth', 7, 'Color', 'g');
% left leg to left hip
line([jointlocation(2,1) jointlocation(3,1)], [jointlocation(2,2) jointlocation(3,2)], [jointlocation(2,3) jointlocation(3,3)], 'LineWidth', 7, 'Color', 'g');

% left foot to left leg
line([jointlocation(2,1) jointlocation(10,1)], [jointlocation(2,2) jointlocation(10,2)], [jointlocation(2,3) jointlocation(10,3)], 'LineWidth', 7, 'Color', 'g');
% left leg to left hip
line([jointlocation(10,1) jointlocation(17,1)], [jointlocation(10,2) jointlocation(17,2)], [jointlocation(10,3) jointlocation(17,3)], 'LineWidth', 7, 'Color', 'g');


% left foot to left leg
line([jointlocation(4,1) jointlocation(5,1)], [jointlocation(4,2) jointlocation(5,2)], [jointlocation(4,3) jointlocation(5,3)], 'LineWidth', 7, 'Color', 'g');
% left leg to left hip
line([jointlocation(11,1) jointlocation(17,1)], [jointlocation(11,2) jointlocation(17,2)], [jointlocation(11,3) jointlocation(17,3)], 'LineWidth', 7, 'Color', 'g');

% left foot to left leg
line([jointlocation(4,1) jointlocation(11,1)], [jointlocation(4,2) jointlocation(11,2)], [jointlocation(4,3) jointlocation(11,3)], 'LineWidth', 7, 'Color', 'g');
% left leg to left hip
line([jointlocation(12,1) jointlocation(14,1)], [jointlocation(12,2) jointlocation(14,2)], [jointlocation(12,3) jointlocation(14,3)], 'LineWidth', 7, 'Color', 'g');

% left leg to left hip
line([jointlocation(13,1) jointlocation(14,1)], [jointlocation(13,2) jointlocation(14,2)], [jointlocation(13,3) jointlocation(14,3)], 'LineWidth', 7, 'Color', 'g');


% left foot to left leg
line([jointlocation(6,1) jointlocation(7,1)], [jointlocation(6,2) jointlocation(7,2)], [jointlocation(6,3) jointlocation(7,3)], 'LineWidth', 7, 'Color', 'g');
% left leg to left hip
line([jointlocation(8,1) jointlocation(9,1)], [jointlocation(8,2) jointlocation(9,2)], [jointlocation(8,3) jointlocation(9,3)], 'LineWidth', 7, 'Color', 'g');


% left foot to left leg
line([jointlocation(6,1) jointlocation(12,1)], [jointlocation(6,2) jointlocation(12,2)], [jointlocation(6,3) jointlocation(12,3)], 'LineWidth', 7, 'Color', 'g');
% left leg to left hip
line([jointlocation(8,1) jointlocation(13,1)], [jointlocation(8,2) jointlocation(13,2)], [jointlocation(8,3) jointlocation(13,3)], 'LineWidth', 7, 'Color', 'g');

% left leg to left hip
line([jointlocation(14,1) jointlocation(15,1)], [jointlocation(14,2) jointlocation(15,2)], [jointlocation(14,3) jointlocation(15,3)], 'LineWidth', 7, 'Color', 'g');

fName =  modelname(1:end-4);
set(gcf, 'units', 'normalized', 'outerposition', [0 0 0.20 1]);
set(gca,'YTickLabel',[]); set(gca,'XTickLabel',[]);
xlim([min(vertices(:,1)), max(vertices(:,1))]);
ylim([min(vertices(:,2)), max(vertices(:,2))]);
grid off;

set(gcf, 'units', 'normalized', 'outerposition', [0 0 0.35 1]);
set(gca,'YTickLabel',[]); set(gca,'XTickLabel',[]);
xlim([min(vertices(:,1)), max(vertices(:,1))]);
ylim([min(vertices(:,2)), max(vertices(:,2))]);
grid off; axis off;
set(gca, 'XColor', 'w');
set(gca, 'YColor', 'w');
set(gca, 'Box', 'off');