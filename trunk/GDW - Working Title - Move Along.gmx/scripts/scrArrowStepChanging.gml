// Inherit step event from Arrow parent
event_inherited();


// If LMB is pressed inside a Changing Arrow Tile bounding box
if(mouse_check_button_pressed(mb_left) && instance_position(mouse_x, mouse_y, objArrowParent))
{
    // Check the current x and y coordinates of the tile
    
    currentX = x;
    currentY = y;
    
}

// When LMB is released
if(mouse_check_button_released(mb_left) && drag == true)
{
    
    // Check new x and y coordinates of the tile
    
    newX = targetX;
    newY = targetY;
    
    if((x != currentX) && (y != currentY))
    {
    
        // Change the direction and image index of the arrow tile
        if(direction < 360)
            {
                direction += 90;
            }
            else
            {
                direction = 0;
            }
            
        if(image_index < 3)
            {
                image_index += 1;
            }
            else
            {
                image_index = 0;
            }
    }
}
