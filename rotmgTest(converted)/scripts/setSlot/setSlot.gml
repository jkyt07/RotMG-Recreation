function setSlot() {
	var location = argument[0]
	var item = argument[1]

	if location >= 4
	{
		inv[(location - 4) % 4, floor((location - 4) / 4)] = item	
	}
	else if location >= 0
	{
		equip[location] = item	
	}
	else
	{
		if nearbyBag != 0 and ds_list_size(nearbyBag.contents) < 8
		{
			if (ds_list_size(nearbyBag.contents) >= location * -1 - 1)
			{
				ds_list_set(nearbyBag.contents, location * -1 - 1, item)	
			}
			else
			{
				ds_list_add(nearbyBag.contents, item)		
			}
		}
		else
		{
			var newBag = instance_create_layer(x + irandom_range(-4, 4), y + irandom_range(-4, 2), "InstancesA", objBag)
			ds_list_add(newBag.contents, item)
		}
	}


}
