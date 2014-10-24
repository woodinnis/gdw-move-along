/* Correct for position of arrow tiles when they are placed on top of a wall

WallX = 0;
WallY = 0;

with(other)
{
    WallX = x;
    WallY = y;    
}

x = (WallX + sprite_width);
y = (WallY + sprite_height);


// No longer in use (21 Oct, 2014 - 20:20)