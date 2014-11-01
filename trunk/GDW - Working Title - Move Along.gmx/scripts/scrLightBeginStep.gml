// Set draw target for lighting effect

surface_set_target(global.Dark);
draw_clear_alpha(c_black,1);

// Set blend mode
draw_set_blend_mode(bm_subtract);