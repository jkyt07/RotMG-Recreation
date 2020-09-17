if place_meeting(x,y,objWiz)
{
	nearbyPortal = self
	if keyboard_check_pressed(vk_enter) or (mouse_check_button_pressed(mb_left) and point_in_rectangle(window_mouse_get_x(), window_mouse_get_y(), guiX + 100, 900, guiX + 250, 950))
	{
		room_goto(portalRoom)
		//objWiz.y = portal.y
		//objWiz.x = portal.x
	}
}

if y > objWiz.y
{
	layer = layer_get_id("InstancesA")	
}
else
{
	layer = layer_get_id("InstancesB")
}