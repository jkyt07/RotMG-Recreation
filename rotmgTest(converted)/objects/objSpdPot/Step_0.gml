if used
{
	if objWiz.spd <= 50
	{
		objWiz.spd++
		instance_destroy()
	}
	used = 0
}

if inInv
{
	persistent = true	
}
else
{
	persistent = false	
}