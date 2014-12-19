// Show button press
image_index = 1;

// Play a sound
audio_play_sound(sndDoor,14,false);

// Set an alarm to delay the transition between rooms
alarm[0] = 0.35 * room_speed;
