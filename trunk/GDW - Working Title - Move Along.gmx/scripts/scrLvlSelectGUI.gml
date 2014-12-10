if(room == room_LvlSelect)
{
    // Set coordinates of buttons
    lvlIconX = sprite_get_width(sprLvlSelectBtn);
    
    // Align text
    draw_set_halign(fa_center);
    
    // Set font and draw title
    draw_set_font(font_Fruktur_med);
    draw_text(room_width/2, 50, "Level Select");
    
    // Create level select buttons
    instance_create(room_width/3 - lvlIconX/2, 150, objLvlSelect01);    
    instance_create(((room_width/3) * 2) - lvlIconX/2, 150, objLvlSelect02);
        
    instance_create(room_width/3 - lvlIconX/2, 250, objLvlSelect03);    
    instance_create(((room_width/3) * 2) - lvlIconX/2, 250, objLvlSelect04);
    
    instance_create(room_width/3 - lvlIconX/2, 350, objLvlSelect05);    

    instance_create(room_width/2 - lvlIconX/2, 550, objMenuBtn);
}
