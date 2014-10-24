// Set variables

// Set moveSpeed to playerSpeed or 0 based on True/False state of canWalk
if(objOverlord.canWalk == true)
    moveSpeed = (playerSpeed / room_speed); // True
else
    moveSpeed = 0;  // False


/*

playerDirection states

playerDirection = 0: UP
playerDirection = 1: LEFT
playerDirection = 2: DOWN
playerDirection = 3: RIGHT

*/


// Move player moveSpeed in playerDirection
switch(playerDirection)
{
    case 0:
    {
        y = y - moveSpeed;
        break;
    }    
    case 1:
    {
        x = x - moveSpeed;
        break;
    }    
    case 2:
    {
        y = y + moveSpeed;
        break;
    }
    case 3:
    {
        x = x + moveSpeed;
        break;
    }
    default:
    {
        moveSpeed = 0;
        break;
    }
}

// Change playerDirection to obj*Arrow
if(place_meeting(x, y, objArrowParent))
{
    arrow = other;
    if(place_meeting(x, y, objUpArrow))
    {        
        playerDirection = 0;
    }
    else if(place_meeting(x, y, objLeftArrow))
    {      
        playerDirection = 1;
    }
    else if(place_meeting(x, y, objDownArrow))
    {
        playerDirection = 2;
    }
    else if(place_meeting(x, y, objRightArrow))
    {
        playerDirection = 3;
    }
}
