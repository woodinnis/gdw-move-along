
// Check for Paused state
if(objOverlord.isPaused == false)
{
    instance_deactivate_object(objPlayer)
    
    // Create instance of a quit button
    quitBtn = instance_create(room_width/2 - sprite_get_width(sprQuitBtn)/2, room_height/2 + 150, objQuitBtn);
    
    // Set canWalk to false, and speed to 0
//    objOverlord.canWalk = false;
//    objPlayer.speed = 0;
 
    // Set Paused state to true   
    objOverlord.isPaused = true;
}
else
{
    instance_activate_all();
    
    // Destroy the quit button
    with(quitBtn)
    {
        instance_destroy()
    }
    // Set canWalk to true, and speed to playerSpeed
//    objOverlord.canWalk = true;
//    objPlayer.speed = objPlayer.playerSpeed;
    
    // Set Paused state to true   
    objOverlord.isPaused = false;
}

// Play the Pause sound
// audio_play_sound(sndPlayerStart,10,false);
