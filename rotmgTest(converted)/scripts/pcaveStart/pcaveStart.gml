function pcaveStart() {
	startX = argument[0]
	startY = argument[1]
	left = argument[2]
	down = argument[3]
	right = argument[4]
	up = argument[5]

	instance_create_layer(startX+4, startY+4, "Ground", objWallinvis)

	//outside rocks
	for(var i = 0; i < 8; i++)
	{
		instance_create_layer(startX + 8 * (8 + i), startY + 8 * 1, "Ground", objRock)
		instance_create_layer(startX + 8 * (8 + i), startY + 8 * 22, "Ground", objRock)

		instance_create_layer(startX + 8 * 1, startY + 8 * (i + 8), "Ground", objRock)
		instance_create_layer(startX + 8 * 22, startY + 8 * (i + 8), "Ground", objRock)
	}
	for(var i = 0; i < 3; i++)
	{
		instance_create_layer(startX + 8 * (6 + i), startY + 8 * 2, "Ground", objRock)
		instance_create_layer(startX + 8 * (15 + i), startY + 8 * 2, "Ground", objRock)
		instance_create_layer(startX + 8 * (4 + i), startY + 8 * 3, "Ground", objRock)
		instance_create_layer(startX + 8 * (17 + i), startY + 8 * 3, "Ground", objRock)

		instance_create_layer(startX + 8 * 21, startY + 8 * (6 + i), "Ground", objRock)
		instance_create_layer(startX + 8 * 21, startY + 8 * (15 + i), "Ground", objRock)
		instance_create_layer(startX + 8 * 20, startY + 8 * (4 + i), "Ground", objRock)
		instance_create_layer(startX + 8 * 20, startY + 8 * (17 + i), "Ground", objRock)

		instance_create_layer(startX + 8 * (6 + i), startY + 8 * 21, "Ground", objRock)
		instance_create_layer(startX + 8 * (15 + i), startY + 8 * 21, "Ground", objRock)
		instance_create_layer(startX + 8 * (4 + i), startY + 8 * 20, "Ground", objRock)
		instance_create_layer(startX + 8 * (17 + i), startY + 8 * 20, "Ground", objRock)

		instance_create_layer(startX + 8 * 2, startY + 8 * (6 + i), "Ground", objRock)
		instance_create_layer(startX + 8 * 2, startY + 8 * (15 + i), "Ground", objRock)
		instance_create_layer(startX + 8 * 3, startY + 8 * (4 + i), "Ground", objRock)
		instance_create_layer(startX + 8 * 3, startY + 8 * (17 + i), "Ground", objRock)
	}
	instance_create_layer(startX + 8 * 4, startY + 8 * 4, "Ground", objRock)
	instance_create_layer(startX + 8 * 4, startY + 8 * 19, "Ground", objRock)
	instance_create_layer(startX + 8 * 19, startY + 8 * 4, "Ground", objRock)
	instance_create_layer(startX + 8 * 19, startY + 8 * 19, "Ground", objRock)

	//opening
	if (left) //Left side opening
	{
		for(var i = 0; i < 4; i++)
		{
			instance_destroy(instance_place(startX + (8 * 1), startY + 8 * (10 + i), objRock))	
		}
		for(var i = 0; i < 2; i++)
		{
			instance_create_layer(startX + 8 * i, startY + 8 * 10, "Ground", objWater)
			instance_create_layer(startX + 8 * i, startY + 8 * 11, "Ground", objWood)
			instance_create_layer(startX + 8 * i, startY + 8 * 12, "Ground", objWood)
			instance_create_layer(startX + 8 * i, startY + 8 * 13, "Ground", objWater)
		}
		instance_create_layer(startX, startY + 8 * 9, "Ground", objRock)
		instance_create_layer(startX, startY + 8 * 14, "Ground", objRock)
	}
	if down
	{
		for(var i = 0; i < 4; i++)
		{
			instance_destroy(instance_place(startX + 8 * (10 + i), startY + 8 * 22, objRock))	
		}
		for(var i = 0; i < 2; i++)
		{
			instance_create_layer(startX + 8 * 10, startY + 8 * (i + 22), "Ground", objWater)
			instance_create_layer(startX + 8 * 11, startY + 8 * (i + 22), "Ground", objWood)
			instance_create_layer(startX + 8 * 12, startY + 8 * (i + 22), "Ground", objWood)
			instance_create_layer(startX + 8 * 13, startY + 8 * (i + 22), "Ground", objWater)
		}
		instance_create_layer(startX + 8 * 9, startY + 8 * 23, "Ground", objRock)
		instance_create_layer(startX + 8 * 14, startY + 8 * 23, "Ground", objRock)
	}
	if right
	{
		for(var i = 0; i < 4; i++)
		{
			instance_destroy(instance_place(startX + (8 * 22), startY + 8 * (10 + i), objRock))	
		}
		for(var i = 0; i < 2; i++)
		{
			instance_create_layer(startX + 8 * (i + 22), startY + 8 * 10, "Ground", objWater)
			instance_create_layer(startX + 8 * (i + 22), startY + 8 * 11, "Ground", objWood)
			instance_create_layer(startX + 8 * (i + 22), startY + 8 * 12, "Ground", objWood)
			instance_create_layer(startX + 8 * (i + 22), startY + 8 * 13, "Ground", objWater)
		}
		instance_create_layer(startX + 8 * 23, startY + 8 * 9, "Ground", objRock)
		instance_create_layer(startX + 8 * 23, startY + 8 * 14, "Ground", objRock)
	}
	if up
	{
		for(var i = 0; i < 4; i++)
		{
			instance_destroy(instance_place(startX + 8 * (10 + i), startY + 8 * 1, objRock))	
		}
		for(var i = 0; i < 2; i++)
		{
			instance_create_layer(startX + 8 * 10, startY + 8 * i, "Ground", objWater)
			instance_create_layer(startX + 8 * 11, startY + 8 * i, "Ground", objWood)
			instance_create_layer(startX + 8 * 12, startY + 8 * i, "Ground", objWood)
			instance_create_layer(startX + 8 * 13, startY + 8 * i, "Ground", objWater)
		}
		instance_create_layer(startX + 8 * 9, startY, "Ground", objRock)
		instance_create_layer(startX + 8 * 14, startY, "Ground", objRock)
	}

	//sand circle
	for(var i = 0; i < 6; i++)
	{
		instance_create_layer(startX + 8 * (i + 9), startY + 8 * 2, "Ground", objSand)
		instance_create_layer(startX + 8 * (i + 9), startY + 8 * 21, "Ground", objSand)
	}
	for(var i = 0; i < 10; i++)
	{
		instance_create_layer(startX + 8 * (i + 7), startY + 8 * 3, "Ground", objSand)
		instance_create_layer(startX + 8 * (i + 7), startY + 8 * 20, "Ground", objSand)
	}
	for(var i = 0; i < 14; i++)
	{
		instance_create_layer(startX + 8 * (i + 5), startY + 8 * 4, "Ground", objSand)
		instance_create_layer(startX + 8 * (i + 5), startY + 8 * 19, "Ground", objSand)
	}
	for(var i = 0; i < 16; i++)
	{
		instance_create_layer(startX + 8 * (i + 4), startY + 8 * 5, "Ground", objSand)
		instance_create_layer(startX + 8 * (i + 4), startY + 8 * 18, "Ground", objSand)
	
		instance_create_layer(startX + 8 * (i + 4), startY + 8 * 6, "Ground", objSand)
		instance_create_layer(startX + 8 * (i + 4), startY + 8 * 17, "Ground", objSand)
	}
	for(var i = 0; i < 18; i++)
	{
		instance_create_layer(startX + 8 * (i + 3), startY + 8 * 7, "Ground", objSand)
		instance_create_layer(startX + 8 * (i + 3), startY + 8 * 16, "Ground", objSand)
	
		instance_create_layer(startX + 8 * (i + 3), startY + 8 * 8, "Ground", objSand)
		instance_create_layer(startX + 8 * (i + 3), startY + 8 * 15, "Ground", objSand)
	}
	for(var i = 0; i < 20; i++)
	{
		instance_create_layer(startX + 8 * (i + 2), startY + 8 * 9, "Ground", objSand)
		instance_create_layer(startX + 8 * (i + 2), startY + 8 * 14, "Ground", objSand)
	
		instance_create_layer(startX + 8 * (i + 2), startY + 8 * 10, "Ground", objSand)
		instance_create_layer(startX + 8 * (i + 2), startY + 8 * 13, "Ground", objSand)
	
		instance_create_layer(startX + 8 * (i + 2), startY + 8 * 11, "Ground", objSand)
		instance_create_layer(startX + 8 * (i + 2), startY + 8 * 12, "Ground", objSand)
	}


}
