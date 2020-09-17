if used
{
	if objWiz.dex <= 800
	{
		objWiz.maxHp+=5
		objWiz.hp+=5
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