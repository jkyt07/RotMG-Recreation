roomMapX = -1
roomMapY = -1
roomMapXend = -1
roomMapYend = -1

for(var i = 0; i < room_width / 8; i++)
{
	for(var j = 0; j < room_height / 8; j++)
	{
		if(instance_place(i*8, j*8, objWall) != noone)
		{
			minimap[i, j] = mapWall;
		}
		else if(instance_place(i*8, j*8, objRock) != noone)
		{
			minimap[i, j] = mapRock;
		}
		else if(instance_place(i*8, j*8, objWater) != noone)
		{
			minimap[i, j] = mapWater;
		}
		else if(instance_place(i*8, j*8, objWood) != noone)
		{
			minimap[i, j] = mapWood;
		}
		else if(instance_place(i*8, j*8, objSand) != noone)
		{
			minimap[i, j] = mapSand;
		}
		else
		{
			minimap[i, j] = 0;
		}
		
		if(minimap[i, j] != 0)
		{
			if(roomMapX == -1 or i < roomMapX)
			{
				roomMapX = i
			}
			if(roomMapXend == -1 or i > roomMapXend)
			{
				roomMapXend = i
			}
		
			if(roomMapY == -1 or j < roomMapY)
			{
				roomMapY = j
			}
			if(roomMapYend == -1 or j > roomMapYend)
			{
				roomMapYend = j
			}
		}
	}
}
roomMapSizeX = roomMapXend - roomMapX
roomMapSizeY = roomMapYend - roomMapY
if (roomMapSizeX > roomMapSizeY)
{
	roomMapSizeT = roomMapSizeX	
}
else
{
	roomMapSizeT = roomMapSizeY	
}
