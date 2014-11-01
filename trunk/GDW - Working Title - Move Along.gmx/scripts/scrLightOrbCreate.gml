// Count total doors in a level
totalDoors = instance_number(objDoor);

// Create an array of all doors in the level
for (i=0; i < totalDoors; i++)
{
    door[i] = instance_find(objDoor,i);
}

