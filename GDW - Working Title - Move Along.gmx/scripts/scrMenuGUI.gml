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
    
    // Start Button
    instance_create(room_width / 2 - startXOffset, (room_height / 3) * 2, objGameStartBtn);
    
    // Quit Button
    instance_create(((room_width / 4) * 3) - quitXOffset, ((room_height / 3) * 2) - quitYOffset, objQuitBtn);
    
    // Level Select Button
    instance_create((room_width / 4) - quitXOffset, ((room_height / 3) * 2) - quitYOffset, objLvlSelectBtn);
    
}
