// Player can move right through the wall
if (objPlayer.direction == 0)
{
    isSolid = false;
}

// Player cannot move left through the wall
else
{
    isSolid = true;
}