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
    instance_create(room_width/2 - lvlIconX, room_height/2, objLvlSelect02);
    instance_create(room_width/4 * 3 - lvlIconX, room_height/2, objLvlSelect03);


    instance_create(room_width/4 - lvlIconX, room_height/2 + lvlIconX + 48, objLvlSelect04);
    instance_create(room_width/2 - lvlIconX, room_height/2 + lvlIconX + 48, objLvlSelect05);
    
    instance_create(room_width/2 - lvlIconX, room_height - lvlIconX * 3, objMenuBtn);

}
