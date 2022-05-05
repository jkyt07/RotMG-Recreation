function pcaveBoss() {
	var startX = argument[0]
	var startY = argument[1]
	var opening = argument[2]
	randomize()

	instance_create_layer(startX, startY, "Ground", objWallinvis)

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


	//inside wood
	for(var i = 0; i < 6; i++)
	{
		instance_create_layer(startX + 8 * (i + 9), startY + 8 * 2, "Ground", objWood)
		instance_create_layer(startX + 8 * (i + 9), startY + 8 * 21, "Ground", objWood)
	}
	for(var i = 0; i < 10; i++)
	{
		instance_create_layer(startX + 8 * (i + 7), startY + 8 * 3, "Ground", objWood)
		instance_create_layer(startX + 8 * (i + 7), startY + 8 * 20, "Ground", objWood)
	}
	for(var i = 0; i < 14; i++)
	{
		instance_create_layer(startX + 8 * (i + 5), startY + 8 * 4, "Ground", objWood)
		instance_create_layer(startX + 8 * (i + 5), startY + 8 * 19, "Ground", objWood)
	}
	for(var i = 0; i < 16; i++)
	{
		instance_create_layer(startX + 8 * (i + 4), startY + 8 * 5, "Ground", objWood)
		instance_create_layer(startX + 8 * (i + 4), startY + 8 * 18, "Ground", objWood)
	
		instance_create_layer(startX + 8 * (i + 4), startY + 8 * 6, "Ground", objWood)
		instance_create_layer(startX + 8 * (i + 4), startY + 8 * 17, "Ground", objWood)
	}
	for(var i = 0; i < 18; i++)
	{
		instance_create_layer(startX + 8 * (i + 3), startY + 8 * 7, "Ground", objWood)
		instance_create_layer(startX + 8 * (i + 3), startY + 8 * 16, "Ground", objWood)
	
		instance_create_layer(startX + 8 * (i + 3), startY + 8 * 8, "Ground", objWood)
		instance_create_layer(startX + 8 * (i + 3), startY + 8 * 15, "Ground", objWood)
	}
	for(var i = 0; i < 20; i++)
	{
		instance_create_layer(startX + 8 * (i + 2), startY + 8 * 9, "Ground", objWood)
		instance_create_layer(startX + 8 * (i + 2), startY + 8 * 14, "Ground", objWood)
	
		instance_create_layer(startX + 8 * (i + 2), startY + 8 * 10, "Ground", objWood)
		instance_create_layer(startX + 8 * (i + 2), startY + 8 * 13, "Ground", objWood)
	
		instance_create_layer(startX + 8 * (i + 2), startY + 8 * 11, "Ground", objWood)
		instance_create_layer(startX + 8 * (i + 2), startY + 8 * 12, "Ground", objWood)
	}


	//opening
	if (opening = 0) //Left side opening
	{
		for(var i = 0; i < 4; i++)
		{
			instance_destroy(instance_place(startX + (1 * 8), startY + 8 * (10 + i), objRock))	
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
	else if opening = 1
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
	else if opening = 2
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
	else if opening = 3
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


	var bossX = irandom_range(6,18)
	var bossY = irandom_range(6,18)
	//while(!place_meeting(startX + bossX*8, startY + bossY*8, objWood))
	//{
	//	 show_debug_message("Here: 4")
	//	 bossX = irandom_range(3,21)
	//	 bossY = irandom_range(3,21)	
	//}
	instance_create_layer(startX + bossX*8, startY + bossY*8, "InstancesA", objDreadstump)



}
