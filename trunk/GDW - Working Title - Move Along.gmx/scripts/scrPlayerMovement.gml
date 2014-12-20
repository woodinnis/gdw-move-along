// Set variables

// Set moveSpeed to playerSpeed or 0 based on True/False state of canWalk
if(objOverlord.canWalk == true)
{
    speed = playerSpeed; // True
    
    // If player walks over an arrow tile
    if (place_meeting(x,y,objArrowParent))
    {
         // Snap to x,y of arrow tile and change direction
         theArrow = instance_place(x,y,objArrowParent);
         if (x < theArrow.x + buffer && x > theArrow.x - buffer)
         {
            if (y < theArrow.y + buffer && y > theArrow.y - buffer)
             {
                 move_snap(sprite_width,sprite_height);
                 direction = theArrow.direction;
                 audio_play_sound(sndArrowTouch, 100, false);   
             } 
         }
    }
   
    // If player hits a wall
    if (place_meeting(x,y,objWall))
    {
        // Play a sound        
        audio_play_sound(sndWall,90,false);
        
        // Snap to closest x,y
        x = xprevious;
        y = yprevious;
        move_snap(sprite_width, sprite_height);
        
        // Reverse direction on impact
        switch(direction)
        {
            case 0:
            {
                direction = 180;
                break;
            }
            case 90:
            {
                direction = 270;
                break;
            }
            case 180:
            {
                direction = 0;
                break;
            }
            case 270:
            {
                direction = 90;
                break;
            }
        }
                  
    }
    
    // Player encounters a hole anywhere on the map
    if(place_meeting(x,y,objHole))
    {
        theHole = instance_place(x,y,objHole)
        
        if (x < theHole.x + buffer && x > theHole.x - buffer)
        {
            if (y < theHole.y + buffer && y > theHole.y - buffer)
            {
                // Snap player to the x,y coordinates of the hole
                move_snap(sprite_width,sprite_height);             
                
                // Stop player movement, and set to invisible                
                objPlayer.visible = false;
                objOverlord.canWalk = false;
                speed = 0;
                
                // Play a sound
                audio_play_sound(sndHole,80,false);
                               
                // Pause the game 
                with(objPauseBtn)
                {
                    event_user(0);
                }                   
            } 
        } 
    }

    // If player walks through a door    
    if(place_meeting(x,y,objDoor))
    {
        // Snap to x,y of door
        move_snap(sprite_width,sprite_height);
        
        // Play door sound
        audio_play_sound(sndDoor,70,false);
        
        // Move to next room
        if(room_exists(room_next(room)))
        {            
            surface_reset_target();          
            
            // Perform room transition
            objOverlord.gameState = 2;
            objOverlord.canWalk = false;
            image_speed = 0;
        }
        /* if no room exists, reload current room
        else
        {    
            // Reset blend mode and target
            draw_set_blend_mode(bm_normal)
            surface_reset_target()
            
            room_restart()
        }
        */   
    }
    
    /* Player encounters a One Way Wall  
    if (place_meeting(x,y,objOneWayParent))
    {
         shortWall = instance_place(x,y,objOneWayParent);
             
         if (x < shortWall.x + buffer && x > shortWall.x - buffer)
         {
            if (y < shortWall.y + buffer && y > shortWall.y - buffer)
             {
                 // If the wall has not already been touched
                 if(shortWall.hasTouched == false)
                 {
                     // Snap player to x,y coordinates of the wall
                     move_snap(sprite_width,sprite_height);
                     //show_debug_message("jump!");
                     shortWall.hasTouched = true;
                 }
                 // If the wall has been touched
                 else
                 {
                     // Stop player movement
                     objOverlord.canWalk = false;                    
                     speed = 0;
                     
                     // Move the player to the next tile away from the wall
                     
                     switch(direction)
                     {
                         case 0:
                         {
                             x -= sprite_width;
                             break;
                         }
                         case 90:
                         {
                             y += sprite_height;
                             break;
                         }
                         case 180:
                         {
                             x += sprite_width;
                             break;
                         }
                         case 270:
                         {
                             y -= sprite_height;
                             break;
                         }
                     }
                     
                     show_debug_message("stop!");
                     
                     // Play a sound
                     audio_play_sound(sndWall,10,false);
                 }             
             } 
         }
    }*/
} 

else
{

/* Click on player to change their initial movement direction 
    if((mouse_x >= x && mouse_y >= y) && (mouse_x <= x + sprite_width && mouse_y <= y + sprite_height))
    {
        if(mouse_button == mb_left)
        {
            if(direction < 360)
                direction += 90;
            else
                direction = 0;
        
            show_message(direction);
        }
    }
*/

}









































