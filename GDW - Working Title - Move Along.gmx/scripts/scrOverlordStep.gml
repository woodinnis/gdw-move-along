// Check for spacebar pressed
if(keyboard_check_pressed(vk_space))
{   
    show_debug_message(room);
    // check for room
    // if not pause room
    if(room != room_Pause)
    {
        global.pauseRoom = room;
        
        surface_reset_target();
        surface_set_target(room_Pause);
        room_goto(room_Pause);
        
        show_debug_message("OW!");
    }
    // if pause room
    else
    {
//        show_debug_message(pauseRoom);

        show_debug_message(room);
                
        surface_reset_target();
//        surface_set_target(global.pauseRoom);
        room_goto(global.pauseRoom);    
    }
}
