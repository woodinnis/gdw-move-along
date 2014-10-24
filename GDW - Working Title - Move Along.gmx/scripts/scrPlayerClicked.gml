// Change starting direction of player by clicking on them

//if((mouse_x >= x && mouse_y >= x) && (mouse_x <= x + sprite_width && mouse_y <= sprite_height))
//{

// This show_message works on it's own.
// The surrounding if statements do not seem to 

//show_message("hoidfhs;dfio");



    if(mouse_button == mb_left)
    {
        if(direction < 360)
        {
            direction = direction + 90;
            show_message(direction);
        }
        else
        {
            direction = 0;
            show_message(direction);
        }
        
    }

//}

