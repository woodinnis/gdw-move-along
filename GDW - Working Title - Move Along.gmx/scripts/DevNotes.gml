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

Attempted to create a system to adjust player direction at start of level
- Needed for mazes with multi-directional starts
- Postponed temporarily in favour of more critical game features

Right Arrows don't seem to work when player is moving down.

Added wall collision condition to scrPlayerMovement
- Player no longer walks through walls

Created Reset Button
- Restarts room on LMB click

Implemented system for adjusting player start direction.
- Appended to scrPlayerMovement in Step Event

Player still steems to walk through the occasional wall. No observable pattern.
I think it's a speed or playerSpeed issue, and may just need some adjustment.

// 25 October, 2014 //

Created Torch Light effect in mazes using sample code from:
http://gmc.yoyogames.com/index.php?showtopic=574602
http://host-a.net/u/robinsblade/LightingAttemptJustOrbgive_away.gm81

Code added to Reset button to reset Surfaces in addition to maze.

Added Reset button, and lighting elements to room_Maze02

Doors now move player to the next room in the sequence
room_exists() prevents player from moving to a non-existant room

Added third room to create adequate playtesting environment

Refined walk mechanic.
- Player no longer enters walls
- Thanks Jason!

Added a fourth room
-Current levels: 2 small/simple, 2 large/complex

Started work on keeping tiles visible during movement.
- Used TargetX/Y code from scrArrowStep -> button_released

// 01 Nove, 2014 //

Created a sound and added it to a collision event with all arrow tiles

Added a five-second light to the exit door of each maze.
- Tried to add lights to both doors, but lights would only spawn on 
    the most recently placed door.
- Moved some tiles around in Maze02 and Maze04 to accommodate for this problem
