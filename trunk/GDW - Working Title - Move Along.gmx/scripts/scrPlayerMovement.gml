// Set variables

// Set moveSpeed to playerSpeed or 0 based on True/False state of canWalk
if(objOverlord.canWalk == true)
   speed = playerSpeed; // True
else
   speed = 0; // False


nextXpos = x + lengthdir_x(speed,direction);
nextYpos = y + lengthdir_y(speed,direction);
   
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
}
