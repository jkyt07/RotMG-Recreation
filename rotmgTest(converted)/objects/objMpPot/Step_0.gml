if used
{
	if objWiz.mp + 100 <= objWiz.maxMp
	{
		objWiz.mp += 100
	}
	else
	{
		objWiz.mp = objWiz.maxMp	
	}
	instance_destroy()
}

if inInv
{
	persistent = true	
}
else
{
	persistent = false	
}