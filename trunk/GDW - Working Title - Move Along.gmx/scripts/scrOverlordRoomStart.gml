// Adjust room view when entering new room
//view_wport[0] = view_wview[0];
//view_hport[0] = view_hview[0];

// Clear tiles used at the beginning of each room
tilesUsed = 0;

//surface_resize(application_surface, view_wview[0], view_hview[0]);

// Set game state to intro
//gameState = 0;

//audio_stop_all();

// Check current room
if(room == room_menuLarge || room == room_LvlSelect)
{
    // Stop the main game background music if it is currently playing
    if(audio_is_playing(sndBGMusicGame))
    {            
        audio_stop_sound(sndBGMusicGame);
//        alarm[0] = room_speed * .25;
    }      

    // If menu music is available to play, begin playing it
    if(sound_exists(sndBGMusicMenu))
    {
        if(!audio_is_playing(sndBGMusicMenu))
        {            
            audio_play_sound(sndBGMusicMenu,2,true);
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