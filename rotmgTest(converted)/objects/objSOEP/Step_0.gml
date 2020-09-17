event_perform_object(itemObj, ev_step, 0)
cooldown = 50 / objWiz.dex

if(fire)
{
	for(i = 0; i < 360; i+=24)
	{
		nextDir = (i + point_direction(objWiz.x, objWiz.y, mouse_x, mouse_y)) % 360
		if(i % 48 == 0)
		{
			var newShot = instance_create_layer(objWiz.x, objWiz.y,"InstancesB", objWizShotL)
		}
		else
		{
			var newShot = instance_create_layer(objWiz.x, objWiz.y,"InstancesB", objWizShotR)
		}
		newShot.dmg++
		newShot.lifespan = 7
		newShot.spd = 2
	}
	
	fire = 0
}