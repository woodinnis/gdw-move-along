// Set variables

moveSpeed = (playerSpeed / room_speed);


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
    
}

// Change playerDirection to objArrow*
if(place_meeting(x, y, objArrowParent))
{
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
    else
    {
        playerDirection = 3;
    }
}
