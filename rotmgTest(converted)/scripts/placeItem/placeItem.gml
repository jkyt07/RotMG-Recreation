function placeItem() {
	//VARIABLES ONLY, use setSlot() to change an item
	var itemLocation = argument[0] 
	var item = argument[1]
	if(itemLocation != -1) //a call of -1 represents a bag
	{
		//itemLocation = item //broke
		item.inInv = 1
	}
	else
	{
		item.inInv = 0
	}

	if(itemLocation >= 0 and itemLocation < 4)
	{
		item.equipped = 1
		item.startEquip = 1
	}

	item.held = false
	item.x = -1000
	item.y = -1000

	if(item == heldItem)
	{
		heldItem = 0	
		heldX = window_mouse_get_x()
		heldY = window_mouse_get_y()
		heldSlot = -1
	}
	once = 1
	//return itemLocation;


}
