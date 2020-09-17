function hit(argument0, argument1) {
	dmg = argument0
	toHit = argument1

	if(toHit.invincible)
	{
		audio_play_sound(toHit.hitSound,2,0)
		exit	
	}
	if(toHit == objWiz)
	{
		var hitDef = tdef	
	}
	else
	{
		var hitDef = toHit.def	
	}
	//calc dmg
	if dmg - hitDef < round(dmg /10) and round(dmg /10) >= 1
	{
		dmg = round(dmg / 10)
	}
	else if dmg - hitDef <= 0
	{
		dmg = 1
	}
	else
	{
		dmg -= hitDef
	}
	//apply dmg
	if toHit.hp < dmg
	{
		toHit.hp = 0	
	}
	else
	{
		toHit.hp -= dmg
	}
	audio_play_sound(toHit.hitSound,2,0)


}
