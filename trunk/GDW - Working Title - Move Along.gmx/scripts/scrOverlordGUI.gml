if((room != room_menuLarge) && (room != room_LvlSelect))
{  
    HUDBottom = (room_height * 0.08);
    
    // Draw a background to make GUI text and images more visible
    draw_set_alpha(0.3);
    draw_rectangle_colour(x, y, room_width, HUDBottom, c_blue, c_blue, c_blue, c_blue, false);
    
    // reset alpha to 100%
    draw_set_alpha(1);
    
    // Draw a black bar at the bottom of the HUD background
    draw_set_colour(c_black);
    draw_rectangle(x, HUDBottom, room_width, HUDBottom + 5, false);
    
    // Check for and set display
    if(font_exists(font_Fiesta))
    {
        draw_set_font(font_Fiesta);
    }
    
    // Draw a countdown timer for the player to start walking
    if(canWalk == false && newStart == true && isPaused == false)
    {   
        draw_set_halign(fa_center);
        draw_set_valign(fa_top);
        
        draw_text(room_width/2, (room_height/4) * 3, "Start In " + string(ceil(objPlayer.alarm[0]/room_speed)));
    }
    
    // Set text colour
    draw_set_colour(c_white);
    
    // Set alignment and draw GUI text
    draw_set_valign(fa_top);
    draw_set_halign(fa_left);
//    draw_set_alpha(1);
    draw_text(x + 20, y + 20, "Maze Number: " + string(room));

// Attempted to add a room timer. Could not get it working.
// Will see if I can get it working later.

//    draw_text(x + 20, y + 40, "Time: " + string(timeUsed));
//    alarm[1] = room_speed * 1;
    
    // Set alignment and draw GUI text
    draw_set_halign(fa_right);
    draw_text(room_width - 20 ,y + 20, "Tiles Moved: " + string(tilesUsed));
    
    
    // Draw buttons
    draw_set_halign(fa_left);
    draw_set_valign(fa_bottom);
//    draw_sprite(sprResetBtn, 0, x + 20, room_height - 40);

    if(isPaused == true)
    {
        // Draw background image
        draw_background(bgMayaFace, x + 50, y + 100);
    }
    
    
}

msgPaneX = (room_width/3);
msgPaneY = (room_height/3);

msgX = (room_width/2);
msgY = msgPaneY + 10

// Display a tutorial message on screen for the first four levels
if(!isPaused)   // Hide the message while paused
{
    switch(room)
    {
        case room_Maze01:
        {   
            draw_set_valign(fa_top);
            draw_set_alpha(0.3);
            draw_set_colour(c_teal);
            draw_rectangle(msgPaneX, msgPaneY, msgPaneX * 2, msgPaneY * 1.5, false);
            
            draw_set_alpha(1);
            draw_set_colour(c_black);
            draw_set_halign(fa_center);
            draw_text(msgX, msgY, "Place the arrow#to create a path#to the door");
            break;
        }
        case room_Maze02:
        {
            draw_set_valign(fa_top);
            draw_set_alpha(0.3);
            draw_set_colour(c_teal);
            draw_rectangle(msgPaneX - 20, msgPaneY, (msgPaneX * 2) + 20, msgPaneY * 1.5, false);
            
            draw_set_alpha(1);
            draw_set_colour(c_black);
            draw_set_halign(fa_center);
            draw_text(msgX, msgY, "Use several arrows#to get around walls");
            break;
        }
        case room_Maze03:
        {
            draw_set_valign(fa_top);
            draw_set_alpha(0.3);
            draw_set_colour(c_teal);
            draw_rectangle(msgPaneX, msgPaneY, msgPaneX * 2, msgPaneY * 1.5, false);
            
            draw_set_alpha(1);
            draw_set_colour(c_black);
            draw_set_halign(fa_center);
            draw_text(msgX, msgY, "Avoid obstacles,#like holes");
            break;
        }
        case room_Maze04:
        {
            draw_set_valign(fa_top);
            draw_set_alpha(0.3);
            draw_set_colour(c_teal);
            draw_rectangle(msgPaneX, msgPaneY, msgPaneX * 2, msgPaneY * 1.5, false);
            
            draw_set_alpha(1);
            draw_set_colour(c_black);
            draw_set_halign(fa_center);
            draw_text(msgX, msgY, "Good Luck!");
            break;
        }
    }
}
