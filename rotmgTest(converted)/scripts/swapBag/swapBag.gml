function swapBag() {
	var item = argument[0]
	if heldSlot >= 4
	{
		inv[(heldSlot - 4) % 4, floor((heldSlot - 4) / 4)] = item
		dropItem(item)	
	}
	else if heldSlot >= 0
	{
		equip[heldSlot] = item
		dropItem(item)	
	}
	else
	{
		dropItem(item)
	}


}
