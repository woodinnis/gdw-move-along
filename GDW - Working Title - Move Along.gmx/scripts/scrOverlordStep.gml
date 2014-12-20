// Perform actions based on game state
// 0 = Intro
// 1 = Playing
// 2 = Outro

//show_debug_message(gameState)

switch(gameState)
{
    case 0:
    {
        if(guiAlpha > 0)
        {
            guiAlpha -= 0.025;
        }
        else
        {
            gameState = 1;
        }
                
        break;
    }
    case 1:
    {
        /* Check for spacebar pressed
        if(keyboard_check_pressed(vk_space))
        {   
            show_debug_message(room);
            // check for room
            // if not pause room
            if(room != room_Pause)
            {
                global.pauseRoom = room;
                
                surface_reset_target();
        //        surface_set_target(room_Pause);
                room_goto(room_Pause);
                
                show_debug_message("OW!");
            }
            // if pause room
            else
            {
        //        show_debug_message(pauseRoom);
        
                show_debug_message(room);
                        
                surface_reset_target();
                surface_set_target(global.pauseRoom);
                room_goto(global.pauseRoom);    
            }
        }
        */
        
        // Keep track of total tiles used this level
        totalTiles = tilesUsed;
        
        thisRoom = string(room_previous(room));
        break;
    }
    case 2:
    {
        if(guiAlpha < 1)
        {
            guiAlpha += 0.025;
        }
        else        
        {
            with(objPlayer)
            {
                if(room_next(room) != room_Pause)
                {                            
                    room_goto_next();
                }
                else
                {
                    room_goto(room_menuLarge);
                }
            }
            gameState = 0;
        }
                
        break;
    }
}
