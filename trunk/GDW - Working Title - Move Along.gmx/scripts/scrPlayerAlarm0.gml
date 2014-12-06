// Find x,y of closest Arrow tile
dirX = instance_nearest(x, y, objArrowParent).x;
dirY = instance_nearest(x, y, objArrowParent).y;

// Set player direction to closest 90-degree mulitple based on nearest Arrow 
//ceil(point_direction(x, y, dirX, dirY)) div 90) * 90;

// Set player direction
direction = 90;

// Set speed and start walking
speed = playerSpeed;
objOverlord.canWalk = true;

// Play walking sound
audio_play_sound(sndPlayerWalk, 10, true);

// Set animation speed
image_speed = 0.07
