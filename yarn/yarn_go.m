function yarn_go

n_pts = 11;
results_fpath = 'd:\udd\ericl\HMI_TOOLS\Erics_Tools\yarn';
save_fn = 'yarn_001.png';

fid = figure;
hold on

pt1 = [0 0];
pt2 = [0 1];
pt3 = [1 1];
pt4 = [1 0];


line_segment_1 = yarn_line(pt1, pt2, n_pts);
line_segment_2 = yarn_line(pt2, pt3, n_pts);
yarn_plot(line_segment_1, line_segment_2, 'r');

line_segment_1 = yarn_line(pt2, pt3, n_pts);
line_segment_2 = yarn_line(pt3, pt4, n_pts);
yarn_plot(line_segment_1, line_segment_2, 'y');

line_segment_1 = yarn_line(pt3, pt4, n_pts);
line_segment_2 = yarn_line(pt4, pt1, n_pts);
yarn_plot(line_segment_1, line_segment_2, 'g');

line_segment_1 = yarn_line(pt4, pt1, n_pts);
line_segment_2 = yarn_line(pt1, pt2, n_pts);
yarn_plot(line_segment_1, line_segment_2, 'b');

% Save and close
save_ffn = fullfile(results_fpath,save_fn);
saveas(fid,save_ffn);
close(fid);
