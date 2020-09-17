if(startEquip)
{
	smaxHp += 40
}
if(endEquip)
{
	smaxHp -= 40
	if objWiz.hp > objWiz.maxHp
	{
		objWiz.hp = objWiz.maxHp	
	}
}
event_inherited();
