// Inherit step event from Arrow parent
event_inherited();




// If LMB is pressed inside a Changing Arrow Tile bounding box
if(mouse_check_button_pressed(mb_left) && instance_position(mouse_x, mouse_y, objArrowParent))
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

// When LMB is released
if(mouse_check_button_released(mb_left) && drag == true)
{
    /* Set target coordinates for Arrow tile 
    targetX = round( (mouse_x - 16)/ 32) * 32;
    targetY = round( (mouse_y - 16)/ 32) * 32;
    
    // Move Arrow Tile
    with(instance)
    {
        // If target coordinates are empty, move tile.   
        if(place_empty(targetX, targetY))
        {
            x = targetX;
            y = targetY;
                        
            drag = false;
        } 
        else
        {
            drag = true;
        }                               
    }
    
    // Reset cursor
    window_set_cursor(cr_default);
    */
}
