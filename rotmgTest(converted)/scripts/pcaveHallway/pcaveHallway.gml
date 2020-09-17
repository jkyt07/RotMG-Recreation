function pcaveHallway() {
	var startX = argument[0]
	var startY = argument[1]
	var left = argument[2]

	instance_create_layer(startX, startY, "Ground", objWallinvis)

	for(var i = 0; i < 24; i++)
	{
		for(var j = 0; j < 2; j++)
		{
			if(left)
			{
				instance_create_layer(startX + 8 * i, startY + 8 * (j + 11), "Ground", objWood)	
				instance_create_layer(startX + 8 * i, startY + 8 * (j + 9), "Ground", objWater)
				instance_create_layer(startX + 8 * i, startY + 8 * (j + 13), "Ground", objWater)
				instance_create_layer(startX + 8 * i, startY + 8 * (j*7 + 8), "Ground", objRock)
			}
			else
			{
				instance_create_layer(startX + 8 * (j + 11), startY + 8 * i, "Ground", objWood)	
				instance_create_layer(startX + 8 * (j + 9), startY + 8 * i, "Ground", objWater)
				instance_create_layer(startX + 8 * (j + 13), startY + 8 * i, "Ground", objWater)
				instance_create_layer(startX + 8 * (j*7 + 8), startY + 8 * i, "Ground", objRock)
			}
		}
	}

	var enemies = irandom_range(3,9)
	for(var i = 0; i < enemies; i++)
	{
		if(left)
		{
			var enemyX = irandom_range(0, 8*24), enemyY = irandom_range(8*9, 8*13)
		}
		else
		{
			var enemyY = irandom_range(0, 8*24), enemyX = irandom_range(8*9, 8*13)
		}
	
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
