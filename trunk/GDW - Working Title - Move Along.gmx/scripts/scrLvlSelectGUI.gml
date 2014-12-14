if(room == room_LvlSelect)
{
    // Set coordinates of buttons
    lvlIconX = sprite_get_width(sprMenu)/2;
    
    // Align text
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    
    // Set font and draw title
    draw_set_font(font_Fiesta_med);
    draw_set_colour(colourText);
    
    // Create level select buttons
    instance_create(room_width/4 - lvlIconX, room_height/2, objLvlSelect01);
    draw_text_colour(room_width/4, room_height/2 + lvlIconX, "1",colourText, colourText, colourText2, colourText2, 1);
    instance_create(room_width/2 - lvlIconX, room_height/2, objLvlSelect02);
    draw_text_colour(room_width/2, room_height/2 + lvlIconX, "2", colourText, colourText, colourText2, colourText2, 1);
    instance_create(room_width/4 * 3 - lvlIconX, room_height/2, objLvlSelect03);
    draw_text_colour(room_width/4 * 3, room_height/2 + lvlIconX, "3", colourText, colourText, colourText2, colourText2, 1);

    instance_create(room_width/4 - lvlIconX, room_height/2 + lvlIconX + 48, objLvlSelect04);
    draw_text_colour(room_width/4, room_height/2 + lvlIconX + 48 + lvlIconX, "4", colourText, colourText, colourText2, colourText2, 1);
    instance_create(room_width/2 - lvlIconX, room_height/2 + lvlIconX + 48, objLvlSelect05);
    draw_text_colour(room_width/2, room_height/2 + lvlIconX + 48 + lvlIconX, "5", colourText, colourText, colourText2, colourText2, 1);
    
//    draw_set_font(font_Fiesta);
    instance_create(room_width/2 - lvlIconX, room_height - lvlIconX * 3, objMenuBtn);
    draw_text_colour(room_width/2, room_height - lvlIconX * 2, "Menu", colourText, colourText, colourText2, colourText2, 1);
}
