event_inherited()

if used
{
	if objWiz.hp + 100 <= tmaxHp
	{
		objWiz.hp += 100
	}
	else
	{
		objWiz.hp = tmaxHp	
	}
	instance_destroy()
}