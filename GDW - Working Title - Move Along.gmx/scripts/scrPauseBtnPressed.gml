
// Check for Paused state
if(objOverlord.isPaused == false)
{
    instance_deactivate_object(objPlayer)
    
    // Set canWalk to false, and speed to 0
//    objOverlord.canWalk = false;
//    objPlayer.speed = 0;
 
    // Set Paused state to true   
    objOverlord.isPaused = true;
}
else
{
    instance_activate_all();
    // Set canWalk to true, and speed to playerSpeed
//    objOverlord.canWalk = true;
//    objPlayer.speed = objPlayer.playerSpeed;
    
    // Set Paused state to true   
    objOverlord.isPaused = false;
}

// Play the Pause sound
audio_play_sound(sndPlayerStart,10,false);

