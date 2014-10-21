// Mouse click and drag

if(mouse_check_button_pressed(mb_left) && instance_position(mouse_x, mouse_y, objArrowParent))
{
    window_set_cursor(cr_drag);
    instance = instance_position(mouse_x, mouse_y, objArrowParent);
    drag = true;
    TileX = x;
    TileY = y;
}

if(mouse_check_button_released(mb_left) && drag == true)
{
    with(instance)
    {
        x = mouse_x - 16;
        y = mouse_y - 16;
        move_snap(32,32);
        drag = false;        
    }
    
    window_set_cursor(cr_default);
}
