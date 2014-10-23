/*  Move Along (Working Title)
**  
**  19 October, 2014
**
**  Game Design Workshop 
**
**  Development Notes

// 21 October, 2014 //

Basic file structure created

First room created (room_Maze01)

Basic Tile set created

Second (test) room created

Overlord Created

Click & Drag mechanic implemented in Player UI

Click & Drag mechanic touched up.

// 22 October, 2014 //

Created Player Sprite

Basic Player Movement implemented
- Player now moves
- Player changes direction on contact with arrow tiles

Attempted to resolve the issue of player/tile collision (Player doesn't move over top of tiles before changing direction)
- (!place_empty) attempted in top if statement
- move_towards_point attempted at lower level
- lerp attempted at lower level
