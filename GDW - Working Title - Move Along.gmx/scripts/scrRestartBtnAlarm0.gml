// Unpause the game
if(objOverlord.isPaused == true)
{
    objOverlord.isPaused = false
}

// Play a sound
audio_play_sound(sndReset, 10, false);

// Restart the room
room_restart();
