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
   
   // If Player meets one-way walls
   // Going left works, other walls do not work yet???
   if(place_meeting(x,y,objOneWayLeft) && onewayL.isSolid)
   {
        shortWall = instance_place(x, y, objOneWayLeft);
        
        //show_debug_message(shortWall.hasTouched);
          
        if(shortWall.hasTouched == false)
        {        
            if(((x == (shortWall.x + 32)/2)+ buffer) && (y == shortWall.y))
            {                
                speed = 0;
                objOverlord.canWalk = false;   
            }
            shortWall.hasTouched = true;
        }
   }
   /*
   // Going down
   else if (place_meeting(x,y,objOneWayDown) && onewayD.isSolid)
   {
        shortWall = instance_place(x, y, objOneWayDown)
        
        show_debug_message(onewayD.isSolid);
          
        if(shortWall.hasTouched == false)
        {        
            if((x == (shortWall.x) && ((y == shortWall.y - (32 + buffer)))))// - 32)/2 - buffer)))
            {                
                speed = 0;
                objOverlord.canWalk = false;   
            }
            shortWall.hasTouched = true;
        }
   }
   
   // Going right
   else if (place_meeting(x,y,objOneWayRight) && onewayR.isSolid)
   {
        shortWall = instance_place(x, y, objOneWayRight)
        
        show_debug_message(shortWall.hasTouched);
          
        if(shortWall.hasTouched == false)
        {        
            if(x == (shortWall.x - buffer) && (y == shortWall.y))
            {                
                speed = 0;
                objOverlord.canWalk = false;   
            }
            shortWall.hasTouched = true;
        }
   }
   // Going up
   else if(place_meeting(x,y,objOneWayUp) && onewayU.isSolid)
   {
        shortWall = instance_place(x, y, objOneWayUp)
        
        show_debug_message(shortWall.hasTouched);
          
        if(shortWall.hasTouched == false)
        {        
            if(x == (shortWall.x) && (y == shortWall.y + buffer))
            {                
                speed = 0;
                objOverlord.canWalk = false;   
            }
            shortWall.hasTouched = true;
        }
   }
    */
    
    if(place_meeting(x,y,objHole))
    {
        theHole = instance_place(x,y,objHole)
        
        if (x < theHole.x + buffer && x > theHole.x - buffer)
        {
           if (y < theHole.y + buffer && y > theHole.y - buffer)
            {
                move_snap(32,32);
                
                surface_reset_target();
        
                room_restart();   
                
        //        direction = theArrow.direction;
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
