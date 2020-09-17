event_inherited()

if(fire)
{
	if(objWiz.mp >= cost)
	{
		objWiz.mp-= cost
		for(var i = 0; i < 360; i+=18)
		{
			var newShot = instance_create_layer(mouse_x,mouse_y,"InstancesA", objSpellShot)
			newShot.direction = i + 45
			newShot.image_angle = direction + 45
		}
	}
	fire = 0
}