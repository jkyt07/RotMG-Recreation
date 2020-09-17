function pickupItem() {
	var itemSlot = argument[0]
	var item = argument[1]

	heldItem = item
	if (itemSlot <= -1)
	{
		ds_list_delete(nearbyBag.contents, itemSlot * -1 - 1)
	}
	else
	{
		setSlot(itemSlot, 0)	
	}
	heldItem.held = true
	heldItem.inInv = 0
	if(itemSlot >= 0 and itemSlot < 4)
	{
		heldItem.equipped = 0
		heldItem.endEquip = 1
	}
	heldX = window_mouse_get_x()
	heldY = window_mouse_get_y()
	heldSlot = itemSlot
	
	once = 1


}
