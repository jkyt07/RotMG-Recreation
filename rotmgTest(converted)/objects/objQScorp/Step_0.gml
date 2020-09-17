event_inherited()

if spwnCooldown >= 30 * 10
{
	instance_create_layer(x,y,"InstancesB",objScorpion)	
	spwnCooldown = 0
}
spwnCooldown++

//if shotCooldown >= shotMaxCooldown and instance_exists(objWiz) and distance_to_object(objWiz) <= targetDistance
//{
//	shotCooldown = 0
//	shotMaxCooldown = irandom_range(45,75)
//	instance_create_layer(x,y,"InstancesB", shot)
//}
//shotCooldown++


