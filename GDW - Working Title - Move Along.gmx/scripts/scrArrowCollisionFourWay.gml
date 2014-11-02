// Set direction to +90 degrees from current

if(hasTouched = false)
{
    
    // Set tile to the player's current direction
    direction = objPlayer.direction;
    
    // Add 90 degrees to the tile's direction
    if(direction < 360)
    {
        direction += 90;
    }
    // Set direction to 0 if tile will reach 360 degrees
    else
    {
        direction = 0;
    }
    
    // Player has touched this tile
    hasTouched = true;
}
