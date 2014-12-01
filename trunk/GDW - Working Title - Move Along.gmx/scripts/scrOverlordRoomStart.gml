// Adjust room view when entering new room
//view_wport[0] = view_wview[0];
//view_hport[0] = view_hview[0];

// Clear tiles used at the beginning of each room
tilesUsed = 0;

//surface_resize(application_surface, view_wview[0], view_hview[0]);


// Check current room
if((room == room_menuLarge) || (room == room_Menu))
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
    // Check to see if game music is playing.
    // If not stop all audio that may be playing
    if(!audio_is_playing(sndBGMusicGame))
        audio_stop_all();
    
    // If game music is available to play, begin playing it
    if(sound_exists(sndBGMusicGame))
    {
        audio_play_sound(sndBGMusicGame,2,true);
    }
}


