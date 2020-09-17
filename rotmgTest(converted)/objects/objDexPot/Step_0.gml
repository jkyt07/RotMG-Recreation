if used
{
	if objWiz.dex <= 75
	{
		objWiz.dex++
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