if used
{
	if objWiz.att <= 75
	{
		objWiz.att++
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