function swapItem() {
	var itemSlot = argument[0]
	var item = argument[1]
	if(item != 0)
	{
		if(heldSlot >= 4)
		{
			setSlot(heldSlot, item)
		}
		else if heldSlot <= -1
		{
			dropItem(item)	
		}
		else
		{
			resetItem()
			exit
		}
	}

	//if(itemSlot >= 0)
	//{
		setSlot(itemSlot, heldItem)
		placeItem(itemSlot, heldItem)
	//}
	//else
	//{
	//	setSlot(-1, heldItem)
	//	placeItem(-1, heldItem)
	//	dropItem(heldItem)
	//}


}
