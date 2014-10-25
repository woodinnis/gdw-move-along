// Declare and set variables

// Check for mouse entry into button
if((mouse_x >= x && mouse_y >= y) && (mouse_x <= x + sprite_width && mouse_y <= y + sprite_height))
{
    // Click LMB to restart room
    if(mouse_button == mb_left)
    {
        // Reset blend mode and target
        draw_set_blend_mode(bm_normal)
        surface_reset_target()
        
        room_restart();
    }
}
