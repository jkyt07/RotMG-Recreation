event_inherited()

if(phase = 1 and hp != 4200)
{
	phase = 2
}
else if(phase = 2 and danceTime == 0)
{
	//image_speed = 0
	phase = irandom_range(3, 4)
	invincible = 0
	danceTime = 30*4
}
else if(hp <= 1800 and phase < 5)
{
	phase = 5
	spd++
}
else if(hp <= 600 and phase < 6)
{
	phase = 6
	//spd++
	waveCMax = 5
}

switch(phase)
{
	case 2:
		invincible = 1
		wandering = 0
		if(distance_to_point(centerX, centerY) <= 2)
		{
			standing = 1
			speed = 0
			image_speed = 3
			danceTime--
			sprite_index = sprMixDance
			if(image_index == 1)
			{
				image_xscale*= -1	
			}
		}
		else
		{
			direction = point_direction(x,y,centerX, centerY)
			sprite_index = sprMixcoatl
		}
		break
	case 3:
		if(fireBallC >= fireBallCMax)
		{
			var newShot = instance_create_layer(x,y,"InstancesB", objMixFireball)
			newShot.direction = point_direction(x, y, objWiz.x, objWiz.y)
			fireBallC = 0
		}
		fireBallC++
		wandering = 1
		speed = spd
		if(fireTime == 0)
		{
			fireTime = 30*8
			phase = 2
		}
		fireTime--
		break
	case 4:
		if(shotC >= shotCMax)
		{
			for(var i = 0; i < 3; i++)
			{
						var newShot = instance_create_layer(x, y, "InstancesB", objMixShot)
						newShot.direction = wallDir * 45 + i*7 - 7
			}
			shotC = 0
			wallDir = (wallDir+1) % 8	
		}
		shotC++
		wandering = 1
		speed = spd
		if(fireTime == 0)
		{
			fireTime = 30*8
			phase = 2
		}
		fireTime--
		break
	case 5:
		
		wandering = 0
		if(distance_to_point(centerX, centerY) <= 2)
		{
			speed = 0
			standing = 1
		}
		else
		{
			speed = spd
			direction = point_direction(x,y,centerX, centerY)
		}
		break
	case 6:
		standing = 0
		direction = point_direction(x, y, objWiz.x, objWiz.y)
		if(distance_to_point(objWiz.x, objWiz.y) <= 1)
		{
			speed = 0
			standing = 1
		}
		else
		{
			speed = spd
		}
		//speed = spd * 1.3
		//waveCMax = 10
		break
}

if phase >= 5 and waveC >= waveCMax and distance_to_object(objWiz) <= targetDistance
{
	waveC = 0
	//if phase = 5
	//waveCMax = irandom_range(15,30)
	for(i = 0; i < 8; i++)
	{
		var newShot = instance_create_layer(x,y,"Ground", objMixWave)
		newShot.direction = i * 45
		if phase = 5
		newShot.speed = 1
	}
}
else
{
	waveC++
}

//if(phase != 2)
//{
//	if(round(direction % 180) != 0)
//	{
//		image_xscale = 1
//	}
//	else
//	{
//		image_xscale = -1	
//	}
//}
