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

// 01 November, 2014 //

Created a sound and added it to a collision event with all arrow tiles

Added a five-second light to the exit door of each maze.
- Tried to add lights to both doors, but lights would only spawn on 
    the most recently placed door.
- Moved some tiles around in Maze02 and Maze04 to accommodate for this problem

Fixed level start door lighting
- Both doors are now lit for five seconds
- Levels can now have more than 2 doors and all will be lit on level start.

Created five more arrow sprites to test new room movement.

Created a four-way arrow tile, which adds 90 degrees to the player's direction.
- Tile can still be moved, trying to make it unmovable.

Created a changing arrow tile which rotates for each player click
- Currently only has a create event - Sets to index 0 (right) 
- Needs a collision event based on the four-way tile
- Collision event should probably use a switch

// 08 November, 2014 //

Removed the darkness in rooms for testing purposes.

Changing (rotating) tiles are now functional.
- Clicking and moving these tiles will now cause them to change direction

Discovered that arrow tiles do not lose their connection to the mouse after being moved.
After moving an arrow tile, clicking anywhere on the map will cause the arrow to move to
that location.
Only clicking another arrow tile will break the connection.

Solved problem of arrow tiles following the mouse after being put down
- Added moveMe boolean to scrParentCreate
- Bool is set to false by default, and switches to true as the mouse enters an arrow tile

Trying to make the changing arrow tile only change after being moved, rather than any time
it has been clicked ie: sitting in one spot clicking to rotate. So far no success.

Cannot solve the click->move->turn/click->don't turn issue with changing arrow tiles
I've decided to repurpose the changing arrows
- They will stay in one place
- The will serve as a puzzle element, player will choose their orientation
- The correct orientation will help the player make it through the maze

Added a step event to the Four Way arrow tile
- moveMe boolean is permanently set to false to prevent movement

Four Way arrow tile now functions fully, changing the player's direction by 90 degrees with each touch

Successfully created a one-way wall. So far the wall only works going left, and preventing return to the right
Duplicates have not been successful.

// 14 November, 2014 //

Added a hole sprite and object to be used as a trap/obstacle

One way walls are now working.
- Player stops on the wall, not next to it
- Can likely be corrected relatively easily
- Graphics may also be a solution

Added first game art.

Created rudimentary start menu
- Currently standard mobile phone size
- Resizing the game screen for play will be necessary

// 15 November, 2014 //

Added more game art
Adjusted colours on some art to more accurately reflect the atmosphere of the game

Adjusted the room reset functions of the reset button and hole trap
- Both now use the same alarm script (scrResetBtnAlarm0)
- Pressing the reset button, or encountering the hole trap stops the game for ~1 second before
    resetting a room
- Hole Trap now makes the player invisible before resetting.

Player will now step away from half walls by one tile.

Created an Android phone resolution map.
- Resized sprites for new map.
- Adjusted scripts for new sprite sizes.

Reduced the size of all remaining sprites
Changed player movement script to accommodate for variable tile sizes (32, 32) -> (spite_width, sprite_height)

Added code to overlord, to adjust for varying map sizes and screen resolutions.

// 21 November, 2014 //

Added several Audio assets to the game in preparation for Beta

Two music pieces sourced from freemusicarchive.org

Applied temporary sounds to most audio assets

Implemented a /really/ basic pause screen
- Called with spacebar
- Only pops up and prevents further action
- Returns to previous room

Made objOverlord persistent and removed superfluous overlords.
