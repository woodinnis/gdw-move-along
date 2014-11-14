// Player can move left through the wall
if (objPlayer.direction == 180)
{
    isSolid = false;
}

// Player cannot move right through the wall
else
{
    isSolid = true;
}