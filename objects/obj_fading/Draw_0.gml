draw_set_alpha(alpha);
draw_set_color(c_black)
draw_rectangle(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), (camera_get_view_x(view_camera[0]) + 960), (camera_get_view_y(view_camera[0]) + 540), false)
draw_set_alpha(1)