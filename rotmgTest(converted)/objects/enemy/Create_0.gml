randomize()
boss = 0
invincible = 0
rSprite = irandom_range(0, sprWizD)
spr = sprite_index
while(sprite_height != sprite_get_height(rSprite))
{
	rSprite = irandom_range(0, sprWizD)
}
hp = 10
def = 0
dmg = 7
hitSound = sndScorpHit
deathSound = sndScorpDie
shot = objScorShot
protector = objQScorp
xp = 1
shotSpd = 4
range = 8
shotLife = range / shotSpd * 30
targetDistance = 8

spd = 1
speed = spd
followSpd = 0
standing = 0
dirCoolRmin = 2
dirCoolRmax = 7
dirMaxCooldown = irandom_range(dirCoolRmin, dirCoolRmax)
dirCooldown = 0
wandering = 1
standRmin = 0
standRmax = 0
standChance = 0
standMax = irandom_range(standRmin, standRmax)
stand = 0

shotCooldown = 0
shotMaxCooldown = 2
shotMaxCooldownR = irandom_range(shotMaxCooldown*30 - 15,shotMaxCooldown*30 + 15)

dropChance = 20

for(var i = 0; i < 15; i++)
{
	for (var j = 0; j < 2; j++)
    {
		drops[i, j] = 0
	}
}

drops[0, 0] = objHpPot
drops[0, 1] = 50
drops[0, 2] = 0
drops[1, 0] = objMpPot
drops[1, 1] = 25
drops[1, 2] = 0

//drops[0, 2] = sprHpPot

