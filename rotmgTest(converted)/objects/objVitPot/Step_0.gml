if used
{
	if objWiz.vit <= 50
	{
		objWiz.vit++
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