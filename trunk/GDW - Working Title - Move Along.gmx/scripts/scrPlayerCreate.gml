// Set player creation variables

dirX = instance_nearest(x, y, objArrowParent).x;
dirY = instance_nearest(x, y, objArrowParent).y;

direction = ceil(point_direction(x, y, dirX, dirY))//*90;

show_debug_message(direction);

//direction = 90;

playerSpeed = 8;
speed = 0;
otherArrow = -1;
scanForArrow = true;
buffer = playerSpeed / 2

alarm[0] = room_speed * 2;
