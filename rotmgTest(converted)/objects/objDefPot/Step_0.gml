if used
{
	if objWiz.def <= 25
	{
		objWiz.def++
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