// Set spotlight target

surface_set_target(global.Dark);

// Set blend mode
draw_set_blend_mode(bm_subtract)
draw_set_color(c_white)

// Draw spotlight
draw_set_alpha(1/60)
for ( i = 0; i < 60; i += 1)
{
    // Show doors for five seconds at the beginning of each room
    if(objOverlord.showDoors == true)
    {
        draw_circle(objDoor.x, objDoor.y,150*((i+1)/60),false);
    }
    
    // Follow mouse while setting tiles
    if(objOverlord.canWalk == false)
    {
        draw_circle(mouse_x,mouse_y,150*((i+1)/60),false)
    }
    // Follow player while walking
    else
    {
        draw_circle(objPlayer.x,objPlayer.y,150*((i+1)/60),false)
    }
}
draw_set_alpha(1)

// Reset blend mode and target
draw_set_blend_mode(bm_normal)
surface_reset_target()
