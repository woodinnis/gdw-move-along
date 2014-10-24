// Declare and set variables

// Check for mouse entry into button
if((mouse_x >= x && mouse_y >= y) && (mouse_x <= x + sprite_width && mouse_y <= y + sprite_height))
{
    // Click LMB to restart room
    if(mouse_button == mb_left)
    {
        room_restart();
    }
}
