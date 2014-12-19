// Tile can be moved
drag = true;

// Change image transparency for player feedback
image_alpha = 0.5;

// Increment number of tiles used
objOverlord.tilesUsed++;

// Set x and y offset for use calculating click & drag coordinates
xoffset = x - mouse_x;
yoffset = y - mouse_y;

// Play sound
audio_play_sound(sndArrowClick, 10, false);

/* Save starting coordinates for use calculating maximum range
startX = x;
startY = y;


if mouse_check_button(mb_left) && position_meeting(mouse_x,mouse_y,self)
{
    x = mouse_x;
    y = mouse_y;
    speed = 0;
//    sprite_index = 
}
