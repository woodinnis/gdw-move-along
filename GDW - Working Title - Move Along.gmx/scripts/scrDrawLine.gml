if(room != room_menuLarge && room != room_LvlSelect)
{
    if(!isPaused)
    {
        for(i = 0; i <= room_width; i += 32)
        {
            draw_line(i,y,i,room_height);
        }
        
        for(i = 0; i <= room_height; i += 32)
        {
            draw_line(x,i,room_width,i);
        }
    }
}
