// Change sprite with to correspond with direction

switch(direction)
{
    case 0:
    {
        sprite_index = sprPlayerRight;
        break;
    }
    case 90:
    {
        sprite_index = sprPlayerUp;
        break;
    }
    case 180:
    {
        sprite_index = sprPlayerLeft;
        break;
    }
    case 270:
    {
        sprite_index = sprPlayerDown;
    }
}