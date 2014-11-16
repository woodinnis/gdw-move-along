// Set variables

// Set moveSpeed to playerSpeed or 0 based on True/False state of canWalk
if(objOverlord.canWalk == true)
{
   speed = playerSpeed; // True
   
   if (place_meeting(x,y,objArrowParent))
   {
        theArrow = instance_place(x,y,objArrowParent);
        if (x < theArrow.x + buffer && x > theArrow.x - buffer)
        {
           if (y < theArrow.y + buffer && y > theArrow.y - buffer)
            {
                move_snap(sprite_width,sprite_height);
                direction = theArrow.direction;
            } 
        }
   }
   
   if (place_meeting(x,y,objWall))
   {
        speed = 0;
        x = xprevious;
        y = yprevious;
        move_snap(sprite_width, sprite_height);
        objOverlord.canWalk = false;
   }
/*
   var onewayL = (instance_place(x,y,objOneWayLeft));
   var onewayD = (instance_place(x,y,objOneWayDown));
   var onewayR = (instance_place(x,y,objOneWayRight));
   var onewayU = (instance_place(x,y,objOneWayUp));
*/  
    
    // Player encounters a One Way Wall  
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
                    // x = xprevious;
                    // y = yprevious;
                    
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
                }
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

                // Begin room reset alarm
                objResetBtn.alarm[0] = room_speed * 1;
            } 
        } 
    }
} 

else
{

// Click on player to change their initial movement direction 
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
}
