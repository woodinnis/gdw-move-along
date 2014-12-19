// Events to perform at the beginning of rooms


// Clear tiles used at the beginning of each room
tilesUsed = 0;


// Check current room
if(room == room_menuLarge)
{
    // Set Variables
    startXOffset = sprite_get_width(sprGameStartBtn) / 2;
    
    quitXOffset = sprite_get_width(sprQuitBtn) / 2;
    quitYOffset = sprite_get_height(sprQuitBtn) / 2;
    
    // Level Select Button
    instance_create((room_width / 4) - quitXOffset, ((room_height / 3) * 2) - quitYOffset, objLvlSelectBtn);
        
    // Quit Button
    instance_create(((room_width / 4) * 3) - quitXOffset, ((room_height / 3) * 2) - quitYOffset, objQuitBtn);
      
    // Start Button
    instance_create(room_width / 2 - startXOffset, (room_height / 3) * 2, objGameStartBtn);

    // Stop the main game background music if it is currently playing
    if(audio_is_playing(sndBGMusicGame))
    {            
        audio_stop_sound(sndBGMusicGame);
    }      

    // If menu music is available to play, begin playing it
    if(sound_exists(sndBGMusicMenu))
    {
        if(!audio_is_playing(sndBGMusicMenu))
        {            
            audio_play_sound(sndBGMusicMenu,1,true);
        }
    }
}
else if(room == room_LvlSelect)
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
       
    // If menu music is available to play, begin playing it
    if(sound_exists(sndBGMusicMenu))
    {
        if(!audio_is_playing(sndBGMusicMenu))
        {            
            audio_play_sound(sndBGMusicMenu,1,true);
        }
    }
}
else
{    
    // Stop the Main Menu background music if it is currently playing 
    if(audio_is_playing(sndBGMusicMenu))
    {
        audio_stop_sound(sndBGMusicMenu);
//        alarm[0] = room_speed * .25;
    }
    
    // If game music is available to play, begin playing it
    if(sound_exists(sndBGMusicGame))
    {
        if(!audio_is_playing(sndBGMusicGame))
        {            
            audio_play_sound(sndBGMusicGame,2,true);
        }
    }
}

// Create a Pause Button

if(room != room_menuLarge && room != room_LvlSelect)
{
//    resetBtnX = room_width/3 - sprite_get_width(sprResetBtn)/2;
    pauseBtnX = room_width/2 - sprite_get_width(sprPauseBtn)/2;

// Begin a new room

newStart = true;        
//    draw_set_valign(fa_bottom);
//    draw_set_halign(fa_center);
//    instance_create(resetBtnX, room_height - 40 ,objResetBtn);
    
    instance_create(pauseBtnX, room_height - 40 ,objPauseBtn);
}
