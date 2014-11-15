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
                move_snap(32,32);
                direction = theArrow.direction;
            } 
        }
   }
   
   if (place_meeting(x,y,objWall))
   {
        speed = 0;
        x= xprevious;
        y = yprevious;
        move_snap(32,32);
        objOverlord.canWalk = false;
   }
   var onewayL = (instance_place(x,y,objOneWayLeft));
   var onewayD = (instance_place(x,y,objOneWayDown));
   var onewayR = (instance_place(x,y,objOneWayRight));
   var onewayU = (instance_place(x,y,objOneWayUp));
  
    
   
   if (place_meeting(x,y,objOneWayParent))
   {
        shortWall = instance_place(x,y,objOneWayParent);
        
        if (x < shortWall.x + buffer && x > shortWall.x - buffer)
        {
           if (y < shortWall.y + buffer && y > shortWall.y - buffer)
            {

                if(shortWall.hasTouched == false)
                {
                    move_snap(32,32);
                    show_debug_message("jump!");
                    shortWall.hasTouched = true;
                }
                else
                {
                    objOverlord.canWalk = false;
                    speed = 0;
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
                move_snap(32,32);
                
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
