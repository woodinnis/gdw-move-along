// Move player from current room to the next room in the sequence

if(room_exists(room_next(room)))
{
    objOverlord.gameState = 2;
//    audio_play_sound(sndDoor,10,false);
}
// if no room exists, reload current room
else
{    
    // Reset blend mode and target
    draw_set_blend_mode(bm_normal)
    surface_reset_target()
    
    room_restart()
}
