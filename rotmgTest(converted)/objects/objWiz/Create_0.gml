randomize()
imgScale = 1

cooldown = 0
invincible = 0
globalvar drunk;
drunk = 0
rSprite = irandom_range(0, sprWizD - 1)
spr = sprite_index

lvl = 1
xp = 0
maxXp = (lvl-1)*25+30

maxHp = 150
hp = maxHp
maxMp = 100
mp = maxMp
att = 3
def = 4
vit = 5
wis = 5
dex = 3
spd = 22

globalvar smaxHp, smaxMp, satt, sdef, svit, swis, sdex, sspd;
smaxHp = 0
smaxMp = 0
satt = 0
sdef = 0
svit = 0
swis = 0
sdex = 0
sspd = 0

globalvar tmaxHp, tmaxMp, tatt, tdef, tvit, twis, tdex, tspd;
tmaxHp = maxHp + smaxHp
tmaxMp = maxMp + smaxMp
tatt = att + satt
tdef = def + sdef
tvit = vit + svit
twis = wis + swis
tdex = dex + sdex
tspd = spd + sspd

wlkSpd = spd //actual dex accounting for water
ppt = ((8 / 30) * (4 + 5.6 * (tspd / 75))) //number of Pixels Per Tick to move
spdCooldown = 0
regen=0
mpRegen = 0

dead = false
deadScreen = 0

image_xscale = imgScale
image_yscale = imgScale

hitSound = sndWizHit

//nextRoom = pointer_null
numHp = 2
numMp = 2
globalvar inv, equip, empty;
for(var i = 0; i < 4; i++)
{
	for(var j = 0; j < 2; j++)
	{
		if(i < 2)
		{
			if(j == 0)
			{
				var newItem = instance_create_layer(-1000, -1000, "Above", objHpPot)
				inv[i, j] = newItem
				newItem.inInv = 1
			}
			else
			{
				var newItem = instance_create_layer(-1000, -1000, "Above", objMpPot)
				inv[i, j] = newItem
				newItem.inInv = 1
			}
		}
		else
		{
			inv[i, j] = 0	
		}
	}
	equip[i] = 0
}
var newItem = instance_create_layer(-1000, -1000, "Above", objStaffT0)
equip[0] = newItem
newItem.inInv = 1
newItem = instance_create_layer(-1000, -1000, "Above", objSpellT0)
equip[1] = newItem
newItem.inInv = 1
newItem = instance_create_layer(-1000, -1000, "Above", objSOEP)
inv[3, 0] = newItem
newItem.inInv = 1
newItem = instance_create_layer(-1000, -1000, "Above", objRingHpT1)
inv[3, 1] = newItem
newItem.inInv = 1

empty[0, 0] = sprStaff
empty[0, 1] = "Staff"
empty[1, 0] = sprSpell
empty[1, 1] = "Spell"
empty[2, 0] = sprRobe
empty[2, 1] = "Robe"
empty[3, 0] = sprRing
empty[3, 1] = "Ring"

globalvar once, heldItem, heldX, heldY, heldSlot, nearbyBag, nearbyPortal;
once = 0
heldItem = 0
heldX = -1
heldY = -1
heldSlot = -1
//temp = 0
nearbyBag = 0
nearbyPortal = 0

globalvar guiX;
guiX = 1920-400

roomBorderX = 0
roomBorderY = 0

roomMapX = -1
roomMapY = -1
roomMapXend = -1
roomMapYend = -1
roomMapSizeX = -1
roomMapSizeY = -1
roomMapSizeT = -1
showMap = 1


globalvar numRooms;
numRooms = 0

globalvar scale;
scale = view_wport[0] / camera_get_view_width(view_camera[0])

c_lttan = make_color_rgb(204, 166, 102)