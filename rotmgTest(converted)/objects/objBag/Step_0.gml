if place_meeting(x,y,objWiz)
{
	nearbyBag = self
}

if y > objWiz.y
{
	layer = layer_get_id("InstancesA")	
}
else
{
	layer = layer_get_id("InstancesB")
}

if ds_list_size(contents) == 0
{
	if nearbyBag == self
	{
		nearbyBag = 0	
	}
	instance_destroy(self)	
}

if(place_meeting(x,y,portal))
{
	depth = layer_get_depth(layer) - 1
}

//if ds_list_size(contents) < 5
//{
//	visible = false	
//}
//else
//{
//	visible = true	
//}