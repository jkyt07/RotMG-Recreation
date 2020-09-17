randomize()
//if shotCooldown >= shotMaxCooldown and instance_exists(objWiz) and point_distance(x,y,objWiz.x,objWiz.y) <= 64
//{
//	shotCooldown = 0
//	shotMaxCooldown = irandom_range(45,75)
//	instance_create_layer(x,y,"InstancesB", shot)
//}
//shotCooldown++
if x < objWiz.x - 228 or x > objWiz.x + 228 or y < objWiz.y - 128 or y > objWiz.y + 128
{
	speed = 0
	exit;	
}
else if(!standing)
{
	speed = spd	
}

shotLife = range / shotSpd * 30

if(wandering and dirCooldown >= dirMaxCooldown)
{
	dirMaxCooldown = irandom_range(dirCoolRmin, dirCoolRmax)
	dirCooldown = 0
	direction = irandom_range(0,360)
}
dirCooldown++

if(standMax != 0 and stand >= standMax)
{
	standMax = irandom_range(standRmin, standRmax)
	stand = 0
	if(speed != 0 and irandom_range(1, 100) <= standChance)
	{
		//sprite_index = sprPLieutenant
		speed = 0
		standing = true
	}
	else
	{
		//sprite_index = sprPBrawler
		speed = spd	
		standing = false
	}
}
stand++

if(!standing and point_distance(x,y, objWiz.x, objWiz.y) <= targetDistance)
{
		x+=lengthdir_x(followSpd / 30, point_direction(x,y,objWiz.x, objWiz.y))
		y+=lengthdir_y(followSpd / 30, point_direction(x,y,objWiz.x, objWiz.y))
}

if(!standing and protector != 0 and instance_exists(objQScorp) and distance_to_object(objQScorp) <= 80 and distance_to_object(objQScorp) >= 30)
{
	move_towards_point(objQScorp.x,objQScorp.y,1)	
}


if(!standing and direction >= 90 and direction <= 270)
{
	image_xscale = -1	
}
else if(!standing)
{
	image_xscale = 1	
}

if !boss and shot != 0 and shotCooldown >= shotMaxCooldownR and instance_exists(objWiz) and distance_to_object(objWiz) <= range * 8
{
	shotCooldown = 0
	shotMaxCooldownR = irandom_range(shotMaxCooldown*30 - 15,shotMaxCooldown*30 + 15)
	var newShot = instance_create_layer(x,y,"InstancesB", shot)
	newShot.dmg = dmg
	newShot.lifespan = shotLife
	newShot.spd = shotSpd * 8 / 30
}
shotCooldown++

if(drunk > 0)
{
	sprite_index = rSprite	
}
else
{
	sprite_index = spr	
}

if hp <= 0
{
	instance_destroy()	
}

if y > objWiz.y
{
	layer = layer_get_id("InstancesA")	
}
else
{
	layer = layer_get_id("InstancesB")
}