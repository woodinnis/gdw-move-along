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
    
    
    // Scan in front of player and set variables for next X and Y positions
    /*nextXpos = x + lengthdir_x(1,direction);
    nextYpos = y + lengthdir_y(1,direction);
       
    //if arrow present, store the id
    if (place_meeting(nextXpos,nextYpos,objArrowParent))
    {
        if (scanForArrow)
        {
            scanForArrow = false;
            otherArrow = instance_position(nextXpos,nextYpos,objArrowParent);
            //show_message(otherArrow);
        }
    }
    // Check for a wall, stop if about to collide
    else if(place_meeting(nextXpos,nextYpos, objWall))
    {
        speed = 0;
    }
    else
    {
        scanForArrow = true;
    }
    
    if (otherArrow > 0)
    {
        if (point_distance(x,y,otherArrow.x,otherArrow.y) <= speed+1)
        {
            x = otherArrow.x;
            y = otherArrow.y;
            direction = otherArrow.direction;
            scanForArrow = false;
            otherArrow = -4;
        }
    }*/
} else {

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
