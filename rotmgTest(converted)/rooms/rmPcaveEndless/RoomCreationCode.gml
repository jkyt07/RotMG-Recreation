randomize();

var roomStart = instance_create_layer(8*24*floor(room_width / (8*24) / 2),8*24*floor(room_height / (8*24) / 2), "InstancesB", objCowardice)
//roomStart.x = 8*(11.5 + 24)
//roomStart.y = 8*(11.5 + 24)
var dends = irandom_range(0,1) + irandom_range(0,1) + irandom_range(0,1)

var dungeonLength = 2000000//irandom_range(5,12)
var curLength = 0
var curDir = -1
var nextDir = irandom_range(0,3)
var usableDir = 1
var forceBoss = false
var numTries = 0
var nextX = roomStart.x, nextY = roomStart.y

numRooms = 0

while(curLength < dungeonLength)
{
	nextDir = irandom_range(0,3)
	usableDir = 1
	while(usableDir > 0 and numTries < 50)
	{
		nextDir = irandom_range(0,3)
		while(nextDir = (curDir + 2) % 4)
		{
			nextDir = irandom_range(0,3)	
		}
		usableDir = 0
		if(nextDir = 0 and (nextX - 8 * 24 - 1< 0 or place_meeting(nextX - 8 * 24 + 1, nextY, objWallinvis)))
		{
			usableDir++
		}
		if(nextDir = 1 and (nextY + 8 * 24 * 2 - 1 > room_height or place_meeting(nextX, nextY + 8 * 24 + 1, objWallinvis)))
		{
			usableDir++
		}
		if(nextDir = 2 and (nextX + 8 * 24 *2 - 1> room_width or place_meeting(nextX + 8 * 24 + 1, nextY, objWallinvis)))
		{
			usableDir++
		}
		if(nextDir = 3 and (nextY - 8 * 24 - 1 < 0 or place_meeting(nextX, nextY - 8 * 24 + 1, objWallinvis)))
		{
			usableDir++
		}
		if usableDir >= 4
		{
			forceBoss = true
			//break;
		}
		numTries++
	}
	if(forceBoss or curLength = dungeonLength - 1 or numTries >= 30)
	{
		pcaveBoss(nextX, nextY, (curDir + 2) % 4)
		if forceBoss or numTries >= 30
		{
			dungeonLength = -40
		}
	}
	else
	{
		var nextRoom = irandom_range(0,0)
		//var openings = [irandom_range(0,1), irandom_range(0,1), irandom_range(0,1), irandom_range(0,1)]
		var openings = [0, 0, 0, 0]
		openings[nextDir] = 1
		if curLength = 0
		{
			pcaveStart(roomStart.x, roomStart.y, openings[0], openings[1], openings[2], openings[3])
		}
		else 
		{
			openings[(curDir + 2) % 4] = 1
			if nextRoom = 0
			{
				pcaveSquareRoom(nextX, nextY, openings[0], openings[1], openings[2], openings[3])
			}
		}
	}
	curDir = nextDir	
	switch(nextDir)
	{
		case 0:
			nextX -= 8*24;
			break;
		case 1:
			nextY += 8*24;
			break;
		case 2:
			nextX += 8*24;
			break;
		case 3:
			nextY -= 8*24;
			break;
	}
	instance_create_layer(nextX, nextY, "Ground", objWallinvis)
	curLength++
	numRooms = curLength
	numTries = 0
}

//pcaveStart(roomStart.x, roomStart.y, 1,1,1,1)
////pcaveBoss(roomStart.x + (8*24), roomStart.y, 0)
//pcaveSquareRoom(roomStart.x + (8*24), roomStart.y, 1,1,1,1)
//pcaveBoss(roomStart.x, roomStart.y - (8*24), 1)
//pcaveBoss(roomStart.x - (8*24), roomStart.y, 2)
//pcaveBoss(roomStart.x, roomStart.y + (8*24), 3)


roomStart.x += 8*11.5
roomStart.y += 8*11.5 

objWiz.x = roomStart.x
objWiz.y = roomStart.y