if(startEquip)
{
	sdef += 4
	swis += 1
	smaxMp += 10
}
if(endEquip)
{
	sdef -= 4
	swis -= 1
	smaxMp -= 10
}

event_perform_object(itemObj, ev_step, 0)