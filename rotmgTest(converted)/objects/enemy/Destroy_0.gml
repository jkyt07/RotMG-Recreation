randomize()
audio_play_sound(deathSound,2,0)
objWiz.xp+=xp

randomize()
if irandom_range(1,100) <= dropChance
{
	var bag = instance_create_layer(x + irandom_range(0,sprite_width/2) * irandom_range(-1,1),y + irandom_range(0,sprite_height/2) * irandom_range(-1,1), "InstancesB", objBag)
	var bagType = 0
	while(ds_list_size(bag.contents) = 0)
	{
		for(var i = 0; i < array_height_2d(drops); i++)
		{
			if irandom_range(1,100) <= drops[i, 1]
			{
				var newItem = instance_create_layer(-1000,-1000, "Above", drops[i, 0])
				ds_list_add(bag.contents, newItem)	
				
				if(drops[i, 2] > bagType)
				{
					bagType = drops[i, 2]	
				}
			}
		}
	}
	bag.sprite_index = sprBrownBag + bagType
}