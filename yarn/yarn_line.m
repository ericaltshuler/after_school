function line_segment = yarn_line(p1,p2,n_pts)

x1 = p1(1);
y1 = p1(2);
x2 = p2(1);
y2 = p2(2);

del_x = (x2 - x1)/(n_pts - 1);
del_y = (y2 - y1)/(n_pts - 1);

line_segment = zeros(n_pts,2);
for i_pt = 1:n_pts
    line_segment(i_pt,1) = x1 + (i_pt - 1) * del_x;
    line_segment(i_pt,2) = y1 + (i_pt - 1) * del_y;
end

