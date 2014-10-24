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

// 23 October, 2014 //

Created a "Start" button sprite
Created a Start button object

Placed Overlord into room

Created a start button control system for player movement
- Player no longer starts moving automatically at game start.
- "Start" button must be pressed for player to start moving

Player movement now overlaps arrow tiles

// 24 October, 2014 //

Replaced the scripts embedded in obj*Arrow tile create events
- Standardized naming
- Filed correctly

Reorganized certain files and folders to more accurately represent their contents

Added a maze background
- Redesign room_Maze01 using this layout
