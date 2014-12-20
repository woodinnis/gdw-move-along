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

// 22 November, 2014 //

Alpha Day

Sized up all sprites to 32x32px for larger room size
- Will need new art for beta
- Would like separate large and small art to use based on screen size

Moved view adjustment functions to a separate script (scrOverlordRoomStart)
- View of maps now adjusts upon entering a new room.

Corrected sound assignment in one-way arrow script
Assigned sndArrowTouch to four way arrow

Created and placed a main menu background

Added the second stage of the main menu background, and implemented the button-pressed code

Background music implemented

All sounds now implemented
- Most sounds still currently the same sound.

Player continues moving after entering a room.
- Have tried setting the speed to 0 in room create event
- Have tried setting speed = 0 in door collision event
- Have tried setting speed = 0 in Overlord Room Start
- Have tried setting speed = 0 in Overlord Alarm 0

// 29 November, 2014 //

Resized room_menuLarge to 544x800
- All rooms will now have this size
- Standardizing rooms to this size will mean a 17x25 tile outer border and 15x23 tile inner area

Test built a new version of room_Maze02 at the new size.
- Size looks good, and playable.
- Views will need to be set to 544x800 for each room
- Appropriate escalation will be needed. This room is too complex for early game.

Resized all current mazes to 544x800
- Completely rebuilt room_Maze01 and room_Maze03
- At least 3 new mazes should be built (totalling 8) before beta

All 5 existing mazes have been rebuilt in 544x800

Player now starts moving automatically 2 seconds after room start.
- This is for testing purposes. Escalation may require increase/decrease of time.

Adjusted scrPlayerCreate to start player with a direction pointing towards the nearest arrow tile.

room_Maze01-03 now have arrow layouts tile layouts using the new room size.

Arrow tiles are now visible while being moved.

Attempted to set a radius limiting arrow tile movement.
- Available code didn't have intended effect (flickered, and left tile in random place)
- Some code has been added to ArrowStep to limit movement, but the if condition is incomplete.
    This should be the first thing explored.
    
// 30 November, 2014 //

Player can now switch rooms successfully.
- Player no longer continues moving upon entering a new room.
- Player waits ~2 seconds and resumes moving in the new room.

Fixed minor audio issue where Player crossed an arrow tile and sound not play correctly
- Moved audio_play_sound(sndArrowTouch) to scrPlayerMovement
- Moved scrArrowCollisionPlayer to OBSOLETE
- Eliminated ArrowParent -> Player collision event

Fixed a minor issue where Player's starting direction would sometimes direct it to an empty space
- Moved dirX, dirY assignment from PlayerCreate to PlayerAlarm0
- Player starting direction is now assigned when player first starts moving in a level

Started futher work on the pause function
- room_Pause causes a full reset of whatever room is currently being played
- Trying to solve this using room_set_persistent half solved the problem, but Player
  did not continue moving once unpaused
- A full graphical overlay which can stop and restart speeds may help
- I have started building with the DrawGUI event to facilitate this

// 01 December, 2014 //

Continuing work on GUI to increase legibility and usability
- Added font_Fruktur to Font assets
- Added "Tiles Moved:" and "Time:" to GUI (Appropriate variables will need to be added to Overlord)
- Added left/right alignment to GUI

tilesUsed variable created in OverlordCreate
- Increments with ArrowParent LeftPressed event.
- Displays next to "Tiles Moved:" in GUI

Made several unsuccessful attempts at getting the Timer working
- Tried using alarms and the Step event
- Found a script example on the GameMaker forum that was close to what I need, but not quite
    (http://gmc.yoyogames.com/index.php?showtopic=569523)
- Have left "Time:" commented out in the GUI Draw event, along with some comments.

Placed the Reset button using OverlordRoomStart
- Reset button appears at bottom center of the maze
- A new, thematically appropriate, sprite is needed

Pause screen is functional using PauseBtnPressed
- Renamed all StartBtn sprites, scripts and objects to PauseBtn
- Two implementations are coded, one uses instance_deactivate_object(), the other using several variables
- bgMayaFace is the current pause screen. "Instruction" and "Exit" buttons should be added

Fixed the issue where a player would walk at a weird angle towards the nearest arrow tile
- PlayerAlarm0 now uses div 90 * 90 to set direction to closest 90-dgree bearing

New graphics for Pause and Reset buttons

Created a Quit button
- QuitBtn Sprite and Object created
- Added to Pause sceen
- Mouse Left Pressed event triggers game_end()

// 04 December, 2014 //

Began implementing sound assets
- Used under the Attribution Licence
- sndHole: 28839__junggle__btn029.wav
    https://www.freesound.org/people/junggle/sounds/28839/
- sndDoor: 83631__arithni__heavy-thud
    https://www.freesound.org/people/arithni/sounds/83631/
- sndWall: 165196__swimignorantfire__skull-crack-on-porcelain-tub
    https://www.freesound.org/people/swimignorantfire/sounds/165196/

- Used under Creative Commons 01
- sndPlayerWalk: 166301__fantozzi__mco-walk-h01
    http://www.freesound.org/people/Fantozzi/sounds/166301/
    
Pausing game now also pauses the walking sound

Addressed background colour issue that hasbeen raised by multiple testers.
- Replaced grass tile, with desaturated green solid B/G
- Desaturated the brick wall tiles

Addressed issue where arrow tiles were difficult to distinguish from the environment
- Changed the colour of the arrow
- Flatened the background colour of the tile
- Changed the shape from a square to a round tile
- Replaced wall tiles with a more unique, and easily distinguishable pattern

Created a restart button, which has been added to the pause menu
- Used the Mayan Face Icon
- Restarts the current room

Game now pauses when player hits a wall or falls into a hole
- PlayerMovement executes the PauseBtnPressed script
- Eliminates the possibility of a player stopping and examining the map

Verified that background audio is not looping, or restarting at beginning of level
- B/g Music does however have a repetitive track, and should be replaced

Addressed escalation issue
- First three levels are now "tutorial" levels
- Final two levels are full mazes

// 05 December, 2015 // 

Set a background panel for the HUD
- Rectangle behind HUD text has been put back at 0.3 alpha
- Resized rectangle to 0.08 screen height
- Placed a black bar at the bottom of the rectangle to clearly distinguish it from the main play area

Renamed rooms to acurately reflect their gameplay order

Tutorial levels now feature simple instructions
- A switch statement in OverlordGUI determines the room number
- The switch draws a 0.3 alpha rectangle onto the level
- Based on the room number a different draw_text places appropriate instructions in the play area

Created a new Menu screen
- Created MenuGUI
- Used MayaFace currently being used in pause menu
- Edited GameStartBtn to resemble new MayaFace icons
- Created a new LvlSelectBtn for implementation of a level select feature
- Removed the earlier MainPage_up and _down from active use.
- Commented out a section of code GameStartButtonLMB

Created Level Select screen
- Scripts LvlSelectBtnLMB, LvlSelectBtnAlarm0 used to move player from main menu
- Renamed room_Menu, repurposing it to room_LvlSelect
- Created objLvlSelect01 - 05 buttons
- Created Fruktur_med to display a "Level Select" room heading
- LvlSelectGUI script displays buttons
- Button objects currently execute all their on room_goto() codes

Created new button sprites for Level Select screen
- LvlSelect01 - 05 sprites

Added sprites for the player
- Four new sprites representing each direction
- Sprite changes based on the direction of the player

Reorganized assets
- New folder structure created
- Sprites, backgrounds, scripts, objects all reorganized
- OBSOLETE folder created for each asset type
- Unused assets placed in OBSOLETE folder to be removed for Gold Master (Week 11)

Added "Move Along" to menuLarge 
- Created font_Fruktur_lrg (100pt)
- MenuGUI script draws the game title

Minor organizational changes
- Found more obsolete assets

// 06 December, 2014 //

Added new sounds for game start and tile clicking
- Activated sound for clicking tiles in objArrowParent -> LeftMouseClicked Event

Modified Pause button
- Added new sprite
- Changed position of pause button to bottom(same X) middle (room_width/2)

Removed reset button from main gameplay screen
- Reset is an option in the pause screen and isn't necessary on the gameplay screen

Started work on the walk animation-walk sound syncronization
- PlayerCreate & PlayerAlarm0 scripts were used
- set image_speed to 0 in PlayerCreate
- image_speed to 0.07 in PlayerAlarm0
- Sound and walk animation aren't quite syncronous
- The animation, sound, or walk speed may have to be changed entirely to properly deal with the sync problems

Changed the Pause menu -> Restart button sound
- Is now the same Door sound as the Game Start button.
- Activated the Restart sound in objRestartBtn -> LeftMousePressed Event

Upgraded menu sprites with better graphics
- LvlSelectBtn
- QuitBtn
- RestartBtn
- GameStartBtn

Upgraded Level Select sprites with better graphics

Added a button to the pause menu
- "Menu" button returns players to the main menu
- Added MenuBtn sprite and object
- PauseBtnPressed script creates and destroys instance of MenuBtn
- objMenuBtn restarts game using game_restart()

// 09 December, 2014 //

Added a countdown timer for player walk.
- New variable newStart set to true in OverlordCreate
- newStart set to true in OverlordRoomStart
- newStart set to false in PlayerAlarm0
- OverlordGUI checks for canWalk, newStart, and isPaused boolean status and draws countdown to HUD

Fixed minor UI issues
- Changed depth of all Menu objects to -1000
- Added condition to OverlordGUI to only display tutorial messages during active play
- Checks with if(!isPaused)

Rearranged the Level Select screen
- All done in LvlSelectGUI
- Adjested the display to a 2-column layout.
- Added a menu button at the bottom middle

Implemented a visible grid in the play area
- Created a tileable background for levels with a dark edge, creating a grid when tiled

// 12 December, 2014 //

Fixed main menu colour issue
- Added draw_set_colour(c_black) to MenuGUI
- "Move Along" no longer appears white when returning to main menu from gameplay

Changed default reaction to wall impact
- Added switch(direction) in PlayerMovement
- Player now reverses direction upon impact with a wall
- sprite_index changes still need to be addressed
- This may be implemented as an optional "Easy Mode" leaving the original pause-on-impact mode as default

Created PlayerStep Script
- Player sprite_index is now tied to Player.direction
- Removed objPlayer Collision -> ArrowParent event

Centralized the level selection scripts
- Created LvlSelectParent
- Removed all LMBPressed Events from LvlSelect01-05
- Added Create, LMBPresed, Alarm0 Events in LvlSelectParent
- All room_goto(level #) is now handled by Alarm0
- LMBPressed delays the transition

Adjusted the depth of Arrow objects

Fixed a long-standing minor error where clicking on the Player would bring up a message window
- Caused by a piece of code left in from an early revision of the game
- Commented out the code

Rooms now fade out and back in
- Added gameState in OverlordCreate (Intro,Playing,Outro)
- Added guiAlpha to OverlordCreate
- Added switch(gameState) to OverlordStep
- Moved room_goto_next from PlayerMovement to OverlordStep
- Removed Player Collision -> Door

Minor adjustment to the colour of Player sprites

Added minor visual feedback (drop shadows) to Arrows

Created ArrowParentLMBPressed, Released to replace Event code

Changed visual feedback
- All arrows drop to 50% opacity when picked up by the player

Implemented new font
- font_Fiesta, med, lrg

// 13 December, 2014 //

Changed all button images to a single image
- All buttons now use the same source sprite
- All buttons are now labeled through script
- All buttons now use a series of similar scripts for Create, LMBPressed, Alarm Events

Changed main menu
- Jason Elliot built a new main menu background
    - This needs to be implemented across all submenus

Added a new tileset for background art
- Mayan hieroglyphs

Added new background to Level Select
- Edited new Main Menu BG for Level Select

Minor adjustment to fade in/out speed in OverlordStep

Transition between rooms now displays number of tiles moved during the level
- Removed HUD with tiles moved from gameplay area
- draw_text() added to DrawTransition to display tiles moved info
- Added variables totalTiles and thisRoom
    - Used in OverlordStep to keep track of tile count and previous room for display
    
Brought Level Select menu buttons into sync with other menu buttons
- Now use sprMenu
- Text is drawn in LvlSelectGUI

// 14 Decemeber, 2014 //

Added new sprite art for all arrows

Added a gradient to the menu text for visibility
- Used draw_text_colour()
- Created a colourText2 in OverlordCreate

All in-game text now uses gradient colours
- Main Menu
- Level Select Menu
- Pause Menu
- Transition screen
- Count down timer

// 15 December, 2014 //

Added new button art
- Created new buttons in photoshop using the up/down maya face button
- Each button is labelled with the same styles as the menus

// 16 December, 2014 //

New arrow art

Resized text on all buttons
- 36pt text in psd

Player no longer triggers an error when leaving level 5
- Player now moves from the final level back to the main menu
- OverlordStep uses room_next() to check for the next room
    - As long as the next room is not room_Pause player continues through levels
    
Added WallCreate
- Wall sprites are now randomly selected images
- Selected from 81 subimages in Wall sprite

// 18 December, 2014 //

New sounds added
- Audio replaced for BGMusicMenu, BGMusicGame
- Audio trimmed for sndDoor
- audio_stop_all() added to OverlordRoomStart now eliminates background audio overlap
- Audio now plays in room_LvlSelect

Background music flows from room to room
Music pauses ang resumes with game

New sound for ArrowTouch

// 19 December, 2014 //

New sounds added
- New sound for ArrowClick
- ArrowParentLMBReleased now stops the ArrowClick sound

Added Player feedback
- ArrowParentLMBPressed sets image_alpha to 0.5
- ArrowParentLMBReleased sets image_alpha to 1

Fixed an issue where sndGameStart was too long and too loud when moving from menuLarge to LvlSelect
- Changed QuitBtnLMB - audio_play_sound(sndDoor,,) to audio_play_sound(sndGameStart,,)
- Not sure why this fixed the problem :/

Still having issues with buttons playing sounds at different speeds and volumes
- All buttons are using the same sound, and call
- All Buttons are using the same code for create, LMBPress, alarm[0]

Made small changes to room_menuLarge
- Disabled views (didn't know they were still enabled)
- Disabled Draw Background Colour

Made small changes to room_LvlSelect
- Disabled Draw Background Colour

Added new sounds
- Reset, Menu, Quit, LvlSelectBtn
- All use the same sound

Fixed the bug causing button sounds to play at different pitches and volumes
- Instances of buttons were created in Draw GUI events
- The sounds were being played multiple times until the GUI was destroyed.

Minor Changes and code cleanup to PlayerMovement
