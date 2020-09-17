if used
{
	if objWiz.maxMp <= 400
	{
		objWiz.maxMp+=5
		objWiz.mp+=5
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