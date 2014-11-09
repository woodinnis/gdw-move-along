// Player can move up through the wall
if (objPlayer.direction == 180)
{
    isSolid = false;
}

// Player cannot move down through the wall
else
{
    isSolid = true;
}
