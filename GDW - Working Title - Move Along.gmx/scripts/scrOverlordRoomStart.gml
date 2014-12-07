// Adjust room view when entering new room
//view_wport[0] = view_wview[0];
//view_hport[0] = view_hview[0];

// Clear tiles used at the beginning of each room
tilesUsed = 0;

//surface_resize(application_surface, view_wview[0], view_hview[0]);


// Check current room
if(room == room_menuLarge)
{
    // Stop all audio that may be playing
    audio_stop_all();

    // If menu music is available to play, begin playing it
    if(sound_exists(sndBGMusicMenu))
    {
        audio_play_sound(sndBGMusicMenu,2,true);
    }
}
else
{    
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
        
//    draw_set_valign(fa_bottom);
//    draw_set_halign(fa_center);
//    instance_create(resetBtnX, room_height - 40 ,objResetBtn);
    
    instance_create(pauseBtnX, room_height - 40 ,objPauseBtn);
}