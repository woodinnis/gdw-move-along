// Set player direction based on closest Arrow tile
dirX = instance_nearest(x, y, objArrowParent).x;
dirY = instance_nearest(x, y, objArrowParent).y;

direction = ceil(point_direction(x, y, dirX, dirY))//*90;

// Set speed and start walking
speed = playerSpeed;
objOverlord.canWalk = true;
