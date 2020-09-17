function getSlot() {
	var slot = argument[0]

	if slot >= 4
	{
		return inv[(slot - 4) % 4, floor((slot - 4) / 4)]	
	}
	else if slot >= 0
	{
		return equip[slot]
	}
	else
	{
		return ds_list_find_index(nearbyBag.contents, slot * -1 - 1)
	}


}
