event_inherited();

// Set direction to +90 degrees from current

if(hasTouched == false)
{
    newDir = false;
    
    // Set tile to the player's current direction
    direction = objPlayer.direction;
    
    show_debug_message(direction);
    
        
    // Add 90 degrees to the tile's direction
    if(direction < 359)
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
    
    alarm[0] = room_speed * 0.5;
}
