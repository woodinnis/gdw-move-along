// Draw a rectangle to be used in room transitions
draw_set_alpha(guiAlpha);
draw_set_colour(c_black);

draw_rectangle(-1,-1,room_width + 1, room_height + 1, false);
draw_set_alpha(1);

if(guiAlpha > 0 && guiAlpha < 1)
{
    // Set text colour
    draw_set_colour(colourText);
    
    // Set alignment and draw GUI text
    draw_set_valign(fa_middle);
    draw_set_halign(fa_center);
    
    draw_text(room_width/2, room_height/2 - 16, "Level " + thisRoom + ":");
    
    draw_text(room_width/2, room_height/2 + 16, "Tiles Moved: " + string(totalTiles));

    
    draw_set_colour(c_black);
}
