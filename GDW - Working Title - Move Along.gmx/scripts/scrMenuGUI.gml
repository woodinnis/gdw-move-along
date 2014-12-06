if(room == room_menuLarge)
{
    // Set coordinates of background image
    bgX = (room_width / 2) - (background_get_width(bgMayaFace) / 2);
    bgY = (room_height / 3) - (background_get_height(bgMayaFace) / 2);
    
    // Set offsets for menu buttons
    startXOffset = sprite_get_width(sprGameStartBtn) / 2;
    
    quitXOffset = sprite_get_width(sprQuitBtn) / 2;
    quitYOffset = sprite_get_height(sprQuitBtn) / 2;
    
    
//    draw_set_halign(fa_top);
//    draw_set_valign(fa_center);
    
    // Draw the background and menu buttons
    draw_background(bgMayaFace, bgX, bgY);
    
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_font(font_Fruktur_lrg);
    draw_text(room_width/2, room_height/3, "Move#Along");
    
    // Start Button
    instance_create(room_width / 2 - startXOffset, (room_height / 3) * 2, objGameStartBtn);
    
    // Quit Button
    instance_create(((room_width / 4) * 3) - quitXOffset, ((room_height / 3) * 2) - quitYOffset, objQuitBtn);
    
    // Level Select Button
    instance_create((room_width / 4) - quitXOffset, ((room_height / 3) * 2) - quitYOffset, objLvlSelectBtn);
    
}
