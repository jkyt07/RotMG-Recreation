function dropItem() {
	var item = argument[0]

	placeItem(-1, item)

	if nearbyBag != 0 and ds_list_size(nearbyBag.contents) < 8
	{
		ds_list_add(nearbyBag.contents, item)		
	}
	else
	{
		var newBag = instance_create_layer(x + irandom_range(-4, 4), y + irandom_range(-4, 2), "InstancesA", objBag)
		ds_list_add(newBag.contents, item)
	}


}
