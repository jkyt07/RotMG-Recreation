function pcaveSquareRoom() {
	var startX = argument[0]
	var startY = argument[1]
	var left = argument[2]
	var down = argument[3]
	var right = argument[4]
	var up = argument[5]

	instance_create_layer(startX, startY, "Ground", objWallinvis)

	for(var i = 0; i < 12; i++)
	{
		for(var j = 0; j < 12; j++)
		{
			instance_create_layer(startX + 8 * (i+6), startY + 8 * (j+6), "Ground", objWood)	
		}
	}
	for(var i = 0; i < 14; i++)
	{
		instance_create_layer(startX + 8 * (i+5), startY + 8 * 5, "Ground", objWater)
		instance_create_layer(startX + 8 * (i+5), startY + 8 * 18, "Ground", objWater)
	
		instance_create_layer(startX + 8 * 5, startY + 8 * (i+5), "Ground", objWater)
		instance_create_layer(startX + 8 * 18, startY + 8 * (i+5), "Ground", objWater)
	}
	for(var i = 0; i < 16; i++)
	{
		instance_create_layer(startX + 8 * (i+4), startY + 8 * 4, "Ground", objRock)
		instance_create_layer(startX + 8 * (i+4), startY + 8 * 19, "Ground", objRock)
	
		instance_create_layer(startX + 8 * 4, startY + 8 * (i+4), "Ground", objRock)
		instance_create_layer(startX + 8 * 19, startY + 8 * (i+4), "Ground", objRock)
	}

	//opening
	if (left) //Left side opening
	{
		for(var i = 0; i < 4; i++)
		{
			instance_destroy(instance_place(startX + (8 * 4), startY + 8 * (10 + i), objRock))
			instance_destroy(instance_place(startX + (8 * 5), startY + 8 * (10 + i), objWater))
		}
		for(var i = 0; i < 6; i++)
		{
			instance_create_layer(startX + 8 * i, startY + 8 * 10, "Ground", objWater)
			instance_create_layer(startX + 8 * i, startY + 8 * 11, "Ground", objWood)
			instance_create_layer(startX + 8 * i, startY + 8 * 12, "Ground", objWood)
			instance_create_layer(startX + 8 * i, startY + 8 * 13, "Ground", objWater)
		}
		for(var i = 0; i < 4; i++)
		{
			instance_create_layer(startX + 8 * i, startY + 8 * 9, "Ground", objRock)
			instance_create_layer(startX + 8 * i, startY + 8 * 14, "Ground", objRock)
		}
	}
	if down
	{
		for(var i = 0; i < 4; i++)
		{
			instance_destroy(instance_place(startX + 8 * (10 + i), startY + 8 * 19, objRock))
			instance_destroy(instance_place(startX + 8 * (10 + i), startY + 8 * 18, objWater))
		}
		for(var i = 0; i < 6; i++)
		{
			instance_create_layer(startX + 8 * 10, startY + 8 * (i + 18), "Ground", objWater)
			instance_create_layer(startX + 8 * 11, startY + 8 * (i + 18), "Ground", objWood)
			instance_create_layer(startX + 8 * 12, startY + 8 * (i + 18), "Ground", objWood)
			instance_create_layer(startX + 8 * 13, startY + 8 * (i + 18), "Ground", objWater)
		}
		for(var i = 0; i < 4; i++)
		{
			instance_create_layer(startX + 8 * 9, startY + 8 * (23 - i), "Ground", objRock)
			instance_create_layer(startX + 8 * 14, startY + 8 * (23 - i), "Ground", objRock)
		}
	}
	if right
	{
		for(var i = 0; i < 4; i++)
		{
			instance_destroy(instance_place(startX + (8 * 19), startY + 8 * (10 + i), objRock))	
			instance_destroy(instance_place(startX + (8 * 18), startY + 8 * (10 + i), objWater))	
		}
		for(var i = 0; i < 6; i++)
		{
			instance_create_layer(startX + 8 * (i + 18), startY + 8 * 10, "Ground", objWater)
			instance_create_layer(startX + 8 * (i + 18), startY + 8 * 11, "Ground", objWood)
			instance_create_layer(startX + 8 * (i + 18), startY + 8 * 12, "Ground", objWood)
			instance_create_layer(startX + 8 * (i + 18), startY + 8 * 13, "Ground", objWater)
		}
		for(var i = 0; i < 4; i++)
		{
			instance_create_layer(startX + 8 * (23 - i), startY + 8 * 9, "Ground", objRock)
			instance_create_layer(startX + 8 * (23 - i), startY + 8 * 14, "Ground", objRock)
		}
	}
	if up
	{
		for(var i = 0; i < 4; i++)
		{
			instance_destroy(instance_place(startX + 8 * (10 + i), startY + 8 * 4, objRock))
			instance_destroy(instance_place(startX + 8 * (10 + i), startY + 8 * 5, objWater))
		}
		for(var i = 0; i < 6; i++)
		{
			instance_create_layer(startX + 8 * 10, startY + 8 * i, "Ground", objWater)
			instance_create_layer(startX + 8 * 11, startY + 8 * i, "Ground", objWood)
			instance_create_layer(startX + 8 * 12, startY + 8 * i, "Ground", objWood)
			instance_create_layer(startX + 8 * 13, startY + 8 * i, "Ground", objWater)
		}
		for(var i = 0; i < 4; i++)
		{
			instance_create_layer(startX + 8 * 9, startY + 8 * i, "Ground", objRock)
			instance_create_layer(startX + 8 * 14, startY + 8 * i, "Ground", objRock)
		}
	}

	var enemies = irandom_range(3,9)
	for(var i = 0; i < enemies; i++)
	{
		var enemyX = irandom_range(44, 148), enemyY = irandom_range(44, 148)
		var enemyType = irandom_range(0,6)
		switch(enemyType)
		{
			case 0:
				instance_create_layer(startX + enemyX, startY + enemyY, "InstancesA", objPBrawler)
				break
			case 1:
				instance_create_layer(startX + enemyX, startY + enemyY, "InstancesA", objPSailor)
				break
			case 2:
				instance_create_layer(startX + enemyX, startY + enemyY, "InstancesA", objPVeteran)
				break
			case 3:
				instance_create_layer(startX + enemyX, startY + enemyY, "InstancesA", objPCommander)
				break
			case 4:
				instance_create_layer(startX + enemyX, startY + enemyY, "InstancesA", objPAdmiral)
				break
			case 5:
				instance_create_layer(startX + enemyX, startY + enemyY, "InstancesA", objPCaptain)
				break
			case 6:
				instance_create_layer(startX + enemyX, startY + enemyY, "InstancesA", objPLieutenant)
				break
		}
		//instance_create_layer(irandom_range(44, 148), irandom_range(44, 148), "InstancesA", objPLieutenant)
	}


}
