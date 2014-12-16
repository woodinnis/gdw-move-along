if(objOverlord.isPaused == true)
{
    // Label all buttons
    
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_font(font_Fiesta);

    // Create instance of a restart button
    draw_text_colour((room_width/4), room_height/2 + 150 + 32, "Restart", objOverlord.colourText, objOverlord.colourText, objOverlord.colourText2, objOverlord.colourText2, 1);
    
    // Create instance of a menu button    
    draw_text_colour((room_width/2), room_height/2 + 175 + 32, "Menu", objOverlord.colourText, objOverlord.colourText, objOverlord.colourText2, objOverlord.colourText2, 1);
    
    // Create instance of a quit button
    draw_text_colour((room_width/4) * 3, room_height/2 + 150 + 32, "Quit", objOverlord.colourText, objOverlord.colourText, objOverlord.colourText2, objOverlord.colourText2, 1);
}