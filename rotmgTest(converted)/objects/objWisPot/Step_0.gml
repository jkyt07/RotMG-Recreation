if used
{
	if objWiz.wis <= 75
	{
		objWiz.wis++
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