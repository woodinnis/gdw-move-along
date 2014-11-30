// Mouse click and drag

if(mouse_check_button(mb_left) && drag)
{
         
    x = mouse_x + xoffset;
    y = mouse_y + yoffset;
   
    // The solution to moving arrows within a fixed radius is probably here
    // I am currently at a loss to figure it out.
    // Until I can figure it out I will move on to other problems 30/11/2014
    
    targetX = round( (mouse_x - 16)/ 32) * 32;    
    targetY = round( (mouse_y - 16)/ 32) * 32;
    
    //if(targetX >= startX - 160) && (targetX <= startX + 160)
    //if(targetY >= startY - 160) && (targetY <= startY + 160)
    
    
}

if(!drag)
{
    if(place_empty(targetX, targetY))
        {   
            x = targetX;
            y = targetY;
                        
            //drag = false;
        } 
}

/*
*   Obsolete as of 27 November, 2014
*
*
*
*

// Set local variables
var targetX, targetY;
var snapX, snapY;

targetX = 0;
targetY = 0;

// If LMB is pressed inside an Arrow Tile bounding box
if(mouse_check_button_pressed(mb_left) && instance_position(mouse_x, mouse_y, objArrowParent))
{    
    // Set cursor
    window_set_cursor(cr_drag);
    
    // Play a sound
    audio_play_sound(sndArrowClick,10,false);
    
    // Check to see if the tile is allowed to move
    if(moveMe == true)
    {        
        // Set variables
        //instance = instance_position(mouse_x, mouse_y, objArrowParent);
        drag = true;
    }   
}

// When LMB is released
if(mouse_check_button_released(mb_left) && drag == true)
{
    // Set target coordinates for Arrow tile 
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
    
}
