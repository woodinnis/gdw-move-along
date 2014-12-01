if(room != room_menuLarge)
{
    // Draw a background to make GUI text and images more visible
    //draw_set_alpha(0.5);
    //draw_roundrect_colour(x, y, room_width, (room_height * 0.15), c_blue, c_blue, false);
    
    if(font_exists(font_Fruktur))
    {
        draw_set_font(font_Fruktur);
    }
    
    draw_set_halign(fa_left)
//    draw_set_alpha(1);
    draw_text(x + 20, y + 20, "Maze Number: " + string(room));
    
    draw_text(x + 20, y + 40, "Time: ");
    
    
    draw_set_halign(fa_right);
    draw_text(room_width - 20 ,y + 20, "Tiles Moved: ");
    
}


