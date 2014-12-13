// Draw a rectangle to be used in room transitions
draw_set_alpha(guiAlpha);
draw_set_colour(c_black);

draw_rectangle(-1,-1,room_width + 1, room_height + 1, false);
draw_set_alpha(1);
