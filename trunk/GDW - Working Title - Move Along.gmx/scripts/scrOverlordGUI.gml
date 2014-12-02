if(room != room_menuLarge)
{  
    // Draw a background to make GUI text and images more visible
    //draw_set_alpha(0.5);
    //draw_roundrect_colour(x, y, room_width, (room_height * 0.15), c_blue, c_blue, false);
    
    // Check for and set display
    if(font_exists(font_Fruktur))
    {
        draw_set_font(font_Fruktur);
    }
    
    // Set text colour
//    draw_set_colour(colourText);
    
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


