if(drunk > 0)
{
	switch(rSprGround[spr - sprSand])
	{
		case 0:
			sprite_index = sprSand
			break;
		case 1:
			sprite_index = sprWood
			break;
		case 2:
			sprite_index = sprWater
			break;
	}
}
else
{
	sprite_index = spr	
}