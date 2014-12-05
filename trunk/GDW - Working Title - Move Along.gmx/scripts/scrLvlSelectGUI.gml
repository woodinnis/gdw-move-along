if(room == room_LvlSelect)
{
    // Set coordinates of buttons
    lvlIconX = x + sprite_get_width(sprLvlSelectBtn);
    
    // Align text
    draw_set_halign(fa_center);
    
    // Set font and draw title
    draw_set_font(font_Fruktur_med);
    draw_text(room_width/2, 50, "Level Select");
    
    // Create level select buttons
    instance_create(lvlIconX, 150, objLvlSelect01);    
    instance_create(lvlIconX, 250, objLvlSelect02);    
    instance_create(lvlIconX, 350, objLvlSelect03);    
    instance_create(lvlIconX, 450, objLvlSelect04);    
    instance_create(lvlIconX, 550, objLvlSelect05);
}
