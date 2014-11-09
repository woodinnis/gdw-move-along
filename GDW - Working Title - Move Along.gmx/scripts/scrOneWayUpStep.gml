// Player can move down through the wall
if (objPlayer.direction == 270)
{
    isSolid = false;
}

// Player cannot move up through the wall
else
{
    isSolid = true;
}
