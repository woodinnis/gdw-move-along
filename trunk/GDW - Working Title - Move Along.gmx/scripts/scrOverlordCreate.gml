// Declare and set variables

/* Adjust room view depending on map and screen size
view_wport[0] = view_wview[0];
view_hport[0] = view_hview[0];


surface_resize(application_surface, view_wview[0], view_hview[0]);
*/

// showDoors is true for five seconds
showDoors = true;

alarm[0] = room_speed * 5;

// canWalk begins as false, preventing the player from walking
canWalk = false;

// Number of tiles used/moved per level
tilesUsed = 0;

// Time spent in room
timeUsed = 0;

// Is the game paused?
isPaused = false;

// Declare colours
colourText = make_colour_rgb(46, 18, 176);