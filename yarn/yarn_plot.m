function yarn_plot(line_segment_1, line_segment_2, color_string)

if size(line_segment_1,1) == size(line_segment_2,1)
    n_pts = size(line_segment_1,1) ;
end

for i_pt = 1:n_pts
    pt1 = line_segment_1(i_pt,:);
    pt2 = line_segment_2(i_pt,:);
    x1 = pt1(1);
    x2 = pt2(1);
    y1 = pt1(2);
    y2 = pt2(2);
    xs = [x1 x2];
    ys = [y1 y2];
    line(xs,ys,'Color',color_string);
end
