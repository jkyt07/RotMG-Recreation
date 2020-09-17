if(startEquip)
{
	sdef += 3
	swis += 1
}
if(endEquip)
{
	sdef -= 3
	swis -= 1
}

event_perform_object(itemObj, ev_step, 0)