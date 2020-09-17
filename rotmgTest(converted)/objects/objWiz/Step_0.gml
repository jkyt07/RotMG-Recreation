keyLeft = keyboard_check(ord("A"))
keyRight = keyboard_check(ord("D"))
keyUp = keyboard_check(ord("W"))
keyDown = keyboard_check(ord("S"))

var moveHoriz = keyRight - keyLeft
var moveVert =  keyDown - keyUp 
tmaxHp = maxHp + smaxHp
tmaxMp = maxMp + smaxMp
tatt = att + satt
tdef = def + sdef
tvit = vit + svit
twis = wis + swis
tdex = dex + sdex
tspd = spd + sspd

randomize()
ppt = ((8 / 30) * (4 + 5.6 * (tspd / 75)) + .5)
if place_meeting(x, y, objWater)
{
	ppt = round(ppt * .4 + .5)
}

if !dead
{
if(moveHoriz != 0 or moveVert != 0)
{
	spdCooldown+= ppt
	for(;spdCooldown >= 1; spdCooldown-= 1)
	{
		if(moveHoriz != 0 and !place_meeting(x + moveHoriz, y, objWall))
		{
			x+= moveHoriz	
		}
		if(moveVert != 0 and !place_meeting(x, y + moveVert, objWall))
		{
			y+= moveVert
		}
	}
}
	
//x = x + (moveHoriz * wlkSpd)
//if place_meeting(x+(moveHoriz * ppt), y, objWall)
//{
//	while not place_meeting(x+moveHoriz, y, objWall)
//	{
//		x = x + moveHoriz
//	}
//}
//else 
//{
//	x = x + (moveHoriz * ppt)
//}

////y = y +  (moveVert * wlkSpd)
//if place_meeting(x, y+(moveVert * ppt), objWall)
//{
//	while not place_meeting(x, y+moveVert, objWall)
//	{
//		y = y + moveVert
//	}
//}
//else 
//{
//	y = y + (moveVert * ppt)
//}

if x < 114
{
	roomBorderX = 114 - x	
}
else if x > room_width - 114
{
	roomBorderX = room_width - 114 - x	
}
else
{
	roomBorderX = 0	
}

if y < 64
{
	roomBorderY = 64 - y	
}
else if y > room_height - 64
{
	roomBorderY = room_height - 64 - y
}
else
{
	roomBorderY = 0	
}

//grab items
if(mouse_check_button_pressed(mb_left) or (once and mouse_check_button_released(mb_left) and point_distance(window_mouse_get_x(), window_mouse_get_y(), heldX, heldY) >= 10))
{
	once = 0
	for(var i = 0; i < 4; i++)
	{
		//equip slots check
		if(!once and point_in_rectangle(window_mouse_get_x(), window_mouse_get_y(), guiX + 25 + 84 * i, 536, guiX + 25 + 84 * i + 64, 600))
		{
			if(heldItem != 0)
			{
				if(heldItem.type == empty[i, 1])
				{
					swapItem(i, equip[i])	
				}
				else
				{
					resetItem()	
				}
			}
			else
			{
				pickupItem(i, equip[i])	
				
			}
		}
		for(var j = 0; j < 2; j++)
		{
			//inv slots check
			if(!once and point_in_rectangle(window_mouse_get_x(), window_mouse_get_y(), guiX + 25 + 84 * i, 620 + 84 * j, guiX + 25 + 84 * i + 64, 620 + 84 * j + 64))
			{
				if(heldItem != 0)
				{
					swapItem(i + j * 4 + 4, inv[i, j])
				}
				else if(inv[i, j] != 0)
				{
					pickupItem(i + j * 4 + 4, inv[i, j])	
				}
			}
			else if(!once and nearbyBag != 0 and point_in_rectangle(window_mouse_get_x(), window_mouse_get_y(), guiX + 25 + i * 84, 820 + j * 84, guiX + 25 + i * 84 + 64, 820 + j * 84 + 64))
			{
				if(heldItem != 0)
				{
					if(ds_list_size(nearbyBag.contents) > i + j * 4)
					{
						swapItem(-1 * (i + j * 4)  - 1, ds_list_find_value(nearbyBag.contents, i + j * 4))	
					}
					//else
					//{
					//	dropItem(heldItem)
					//}
				}
				else if(ds_list_size(nearbyBag.contents) >= i + j * 4)
				{
					pickupItem((i + j * 4 + 1)*-1, ds_list_find_value(nearbyBag.contents, i + j * 4))
				}
			}
		}
	}
	if !once and heldItem != 0
	{
		dropItem(heldItem)	
	}
}
//if mouse_check_button_pressed(mb_left)
//{
//	once = 0
//	for(var i = 0; i < 4; i++)
//	{
//		if(!once and point_in_rectangle(window_mouse_get_x(), window_mouse_get_y(), guiX + 25 + 84 * i, 536, guiX + 25 + 84 * i + 64, 600))
//		{
//			if(heldItem != 0)
//			{
//				once = 1
//				if(heldItem.type == empty[i, 1])
//				{
//					if(equip[i] == 0)
//					{
//						equip[i] = heldItem
//						heldItem.inInv = 1
//						heldItem.held = false
//						heldItem.x = -1000
//						heldItem.y = -1000
//						heldItem = 0
//						heldX = -1
//						heldY = -1
//						heldSlot = -1
//					}
//					else if heldSlot >= 4
//					{
//						inv[(heldSlot - 4) % 4, floor((heldSlot - 4) / 4)] = heldItem
//						heldItem.inInv = 1
//						heldItem.held = false
//						heldItem.x = -1000
//						heldItem.y = -1000
//						heldItem = 0
//						heldX = -1
//						heldY = -1
//						heldSlot = -1	
//					}
//					else if heldSlot >= 0
//					{
//						equip[heldSlot] = heldItem
//						heldItem.inInv = 1
//						heldItem.held = false
//						heldItem.x = -1000
//						heldItem.y = -1000
//						heldItem = 0
//						heldX = -1
//						heldY = -1
//						heldSlot = -1
//					}
//					else
//					{
//						if nearbyBag != 0 and ds_list_size(nearbyBag.contents) < 8
//						{
//							ds_list_add(nearbyBag.contents, equip[i])		
//						}
//						else
//						{
//							newBag = instance_create_layer(x + irandom_range(-4, 4), y + irandom_range(-4, 2), "InstancesA", objBag)
//							ds_list_add(newBag.contents, equip[i])
//						}
//						equip[i] = heldItem
//						heldItem.held = false
//						heldItem.x = -1000
//						heldItem.y = -1000
//						heldItem = 0
//						heldX = -1
//						heldY = -1
//						heldSlot = -1
//					}
//				}
//			}
//			else if (equip[i] != 0)
//			{
//				once = 1
//				equip[i].held = true
//				heldItem = equip[i]
//				heldItem.inInv = 0
//				equip[i] = 0
//				heldX = window_mouse_get_x()
//				heldY = window_mouse_get_y()
//				heldSlot = i
//			}
//		}
//		for(var j = 0; j < 2; j++)
//		{
//			if(!once and point_in_rectangle(window_mouse_get_x(), window_mouse_get_y(), guiX + 25 + 84 * i, 620 + 84 * j, guiX + 25 + 84 * i + 64, 620 + 84 * j + 64))
//			{
//				once = 1
//				if(heldItem != 0)
//				{
//					if(inv[i, j] == 0)
//					{
//						inv[i, j] = heldItem
//						heldItem.inInv = 1
//						heldItem.held = false
//						heldItem.x = -1000
//						heldItem.y = -1000
//						heldItem = 0
//						heldX = -1
//						heldY = -1
//						heldSlot = -1
//					}
//					else if heldSlot >= 4
//					{
//						inv[(heldSlot - 4) % 4, floor((heldSlot - 4) / 4)] = inv[i, j]
//						inv[i, j] = heldItem
//						heldItem.inInv = 1
//						heldItem.held = false
//						heldItem.x = -1000
//						heldItem.y = -1000
//						heldItem = 0
//						heldX = -1
//						heldY = -1
//						heldSlot = -1	
//					}
//					else if heldSlot >= 0
//					{
//						equip[heldSlot] = inv[i, j]
//						inv[i, j] = heldItem
//						heldItem.inInv = 1
//						heldItem.held = false
//						heldItem.x = -1000
//						heldItem.y = -1000
//						heldItem = 0
//						heldX = -1
//						heldY = -1
//						heldSlot = -1
//					}
//					else
//					{
//						if nearbyBag != 0 and ds_list_size(nearbyBag.contents) < 8
//						{
//							ds_list_add(nearbyBag.contents, inv[i, j])		
//						}
//						else
//						{
//							newBag = instance_create_layer(x + irandom_range(-4, 4), y + irandom_range(-4, 2), "InstancesA", objBag)
//							ds_list_add(newBag.contents, inv[i, j])
//						}
//						inv[i, j] = heldItem
//						heldItem.held = false
//						heldItem.x = -1000
//						heldItem.y = -1000
//						heldItem = 0
//						heldX = -1
//						heldY = -1
//						heldSlot = -1
//					}
//				}
//				else if(inv[i, j] != 0)
//				{
//					inv[i, j].held = true
//					heldItem = inv[i, j]
//					heldItem.inInv = 0
//					inv[i, j] = 0
//					heldX = window_mouse_get_x()
//					heldY = window_mouse_get_y()
//					heldSlot = i + j*4 + 4
//				}
//			}
//			else if(!once and heldItem == 0 and nearbyBag != 0 and i + j * 4 < ds_list_size(nearbyBag.contents) and point_in_rectangle(mouse_x, mouse_y,x + 93 + 10 * i + roomBorderX, y + 33 + 10 * j + roomBorderY, x + 93 + 10 * i + 8 + roomBorderX, y + 33 + 10 * j + 8 + roomBorderY))
//			{
//				bagItem = ds_list_find_value(nearbyBag.contents, i + j * 4)
//				bagItem.held = true
//				heldItem = bagItem
//				heldX = window_mouse_get_x()
//				heldY = window_mouse_get_y()
//				heldSlot = -2
//				ds_list_delete(nearbyBag.contents, i + j * 4)
//				once = 1
//			}
//		}
//	}
//	if !once and heldItem != 0
//	{
//		if nearbyBag != 0 and ds_list_size(nearbyBag.contents) < 8
//		{
//			ds_list_add(nearbyBag.contents, heldItem)		
//		}
//		else
//		{
//			newBag = instance_create_layer(x + irandom_range(-4, 4), y + irandom_range(-4, 2), "InstancesA", objBag)
//			ds_list_add(newBag.contents, heldItem)
//		}
//		heldItem.held = false
//		heldItem.x = -1000
//		heldItem.y = -1000
//		heldItem = 0
//		heldX = -1
//		heldY = -1
//		heldSlot = -1
//		once = 1
//	}
//}
//if(mouse_check_button_released(mb_left) and heldItem != 0 and point_distance(heldX, heldY, window_mouse_get_x(), window_mouse_get_y()) > 10)
//{
//	for(var i = 0; i < 4; i++)
//	{
//		if(point_in_rectangle(window_mouse_get_x(), window_mouse_get_y(), guiX + 25 + 84 * i, 536, guiX + 25 + 84 * i + 64, 600))
//		{
//			if(heldItem != 0)
//			{
//				once = 1
//				if(equip[i] == 0 and heldItem.type == empty[i, 1])
//				{
//					equip[i] = heldItem
//					heldItem.inInv = 1
//					heldItem.held = false
//					heldItem.x = -1000
//					heldItem.y = -1000
//					heldItem = 0
//					heldX = -1
//					heldY = -1
//					heldSlot = -1
//				}
//				if(heldItem.type == empty[i, 1])
//				{
//					if heldSlot >= 4
//					{
//						inv[(heldSlot - 4) % 4, floor((heldSlot - 4) / 4)] = equip[i]
//						equip[i] = heldItem
//						heldItem.inInv = 1
//						heldItem.held = false
//						heldItem.x = -1000
//						heldItem.y = -1000
//						heldItem = 0
//						heldX = -1
//						heldY = -1
//						heldSlot = -1	
//					}
//					else if heldSlot >= 0
//					{
//						equip[heldSlot] = equip[i]
//						equip[i] = heldItem
//						heldItem.inInv = 1
//						heldItem.held = false
//						heldItem.x = -1000
//						heldItem.y = -1000
//						heldItem = 0
//						heldX = -1
//						heldY = -1
//						heldSlot = -1
//					}
//					else
//					{
//						if nearbyBag != 0 and ds_list_size(nearbyBag.contents) < 8
//						{
//							ds_list_add(nearbyBag.contents, equip[i])		
//						}
//						else
//						{
//							newBag = instance_create_layer(x + irandom_range(-4, 4), y + irandom_range(-4, 2), "InstancesA", objBag)
//							ds_list_add(newBag.contents, equip[i])
//						}
//						equip[i] = heldItem
//						heldItem.held = false
//						heldItem.x = -1000
//						heldItem.y = -1000
//						heldItem = 0
//						heldX = -1
//						heldY = -1
//						heldSlot = -1
//					}
//				}
//			}
//			//else if(equip[i] != 0)
//			//{
//			//	once = 1
//			//	equip[i].held = true
//			//	heldItem = equip[i]
//			//	heldItem.inInv = 0
//			//	equip[i] = 0
//			//	heldX = window_mouse_get_x()
//			//	heldY = window_mouse_get_y()
//			//	heldSlot = i
//			//}
//		}
//		for(var j = 0; j < 2; j++)
//		{
//			if(point_in_rectangle(window_mouse_get_x(), window_mouse_get_y(), guiX + 25 + 84 * i, 620 + 84 * j, guiX + 25 + 84 * i + 64, 620 + 84 * j + 64))
//			{
//				once = 1
//				if(inv[i, j] == 0)
//				{
//					inv[i, j] = heldItem
//					heldItem.inInv = 1
//					heldItem.held = false
//					heldItem.x = -1000
//					heldItem.y = -1000
//					heldItem = 0
//					heldX = -1
//					heldY = -1
//					heldSlot = -1
//				}
//				else if heldSlot >= 4
//				{
//					inv[(heldSlot - 4) % 4, floor((heldSlot - 4) / 4)] = inv[i, j]
//					inv[i, j] = heldItem
//					heldItem.inInv = 1
//					heldItem.held = false
//					heldItem.x = -1000
//					heldItem.y = -1000
//					heldItem = 0
//					heldX = -1
//					heldY = -1
//					heldSlot = -1	
//				}
//				else if heldSlot >= 0
//				{
//					equip[heldSlot] = inv[i, j]
//					inv[i, j] = heldItem
//					heldItem.inInv = 1
//					heldItem.held = false
//					heldItem.x = -1000
//					heldItem.y = -1000
//					heldItem = 0
//					heldX = -1
//					heldY = -1
//					heldSlot = -1
//				}
//				else
//				{
//					if nearbyBag != 0 and ds_list_size(nearbyBag.contents) < 8
//					{
//						ds_list_add(nearbyBag.contents, inv[i, j])		
//					}
//					else
//					{
//						newBag = instance_create_layer(x + irandom_range(-4, 4), y + irandom_range(-4, 2), "InstancesA", objBag)
//						ds_list_add(newBag.contents, inv[i, j])
//					}
//					inv[i, j] = heldItem
//					heldItem.held = false
//					heldItem.x = -1000
//					heldItem.y = -1000
//					heldItem = 0
//					heldX = -1
//					heldY = -1
//					heldSlot = -1
//				}
//			}
//		}
//	}
//	if heldItem != 0
//	{
//		if nearbyBag != 0 and ds_list_size(nearbyBag.contents) < 8
//		{
//			ds_list_add(nearbyBag.contents, heldItem)		
//		}
//		else
//		{
//			newBag = instance_create_layer(x + irandom_range(-4, 4), y + irandom_range(-4, 2), "InstancesA", objBag)
//			ds_list_add(newBag.contents, heldItem)
//		}
//		heldItem.held = false
//		heldItem.x = -1000
//		heldItem.y = -1000
//		heldItem = 0
//		heldX = -1
//		heldY = -1
//		heldSlot = -1
//		once = 1
//	}		
//}

if moveVert != 0 or moveHoriz != 0 or (mouse_check_button(mb_left) and !once) and !dead
{
	if (image_speed == 0)
	{
		image_index = 1	
	}
	image_speed = 1	
}
else
{
	image_speed = 0
	image_index = 0
}
if mouse_check_button(mb_left) and !once
{
	if abs(mouse_x - x) <= abs(mouse_y - y)
	{
		if (mouse_y - y)  >= 0
		{
			spr = sprWizFireD	
		}
		else
		{
			spr = sprWizFireU	
		}
	}
	else
	{
		if (mouse_x - x)  >= 0
		{
			spr = sprWizFireLR
			image_xscale = 1
		}
		else
		{
			spr = sprWizFireLR
			image_xscale = -1	
		}
	}
}
else
{
	if moveVert == -1
	{
		spr = sprWizU	
	}
	else if moveVert == 1
	{
		spr = sprWizD	
	}
	else if moveHoriz != 0
	{
		spr = sprWizLR
	}
	
	if((moveHoriz == 1 and moveVert >= 0) or (moveHoriz == -1 and moveVert == -1))
	{
		image_xscale = 1	
	}
	else if((moveHoriz == -1 and moveVert >= 0) or (moveHoriz == 1 and moveVert == -1))
	{
		image_xscale = -1	
	}
}

if hp <= 0
{
	audio_play_sound(sndWizDie,2,0)
	audio_play_sound(sndDeath,1,0)
	dead = true
	//visible = false
}


if mouse_check_button(mb_left) and equip[0] != 0 and cooldown >= equip[0].cooldown and window_mouse_get_x() <= guiX and heldItem == 0 and !once
{
	equip[0].fire = 1	
	//instance_create_layer(x+lengthdir_x(3,point_direction(x,y,mouse_x,mouse_y)),y+lengthdir_y(3,point_direction(x,y,mouse_x,mouse_y)),"InstancesB", objWizShotL)
	//instance_create_layer(x+lengthdir_x(3,point_direction(x,y,mouse_x,mouse_y)),y+lengthdir_y(3,point_direction(x,y,mouse_x,mouse_y)),"InstancesB", objWizShotR)
	cooldown = 0
	audio_play_sound(sndMagicShoot,5,0)
}
cooldown++

if keyboard_check_pressed(vk_space) and equip[1] != 0
{
	equip[1].fire = 1
}

for(var i = 1; i <= 8; i++)
{
	if keyboard_check_pressed(ord(string(i)))
	{
		if(inv[(i - 1) % 4, floor((i - 1) / 4)] != 0 and inv[(i - 1) % 4, floor((i - 1) / 4)].usable)
		{
			inv[(i - 1) % 4, floor((i - 1) / 4)].used = 1
			inv[(i - 1) % 4, floor((i - 1) / 4)] = 0
		}
	}
}

if mpRegen >= (0.5 + 0.06 * twis) * 30
{
	mpRegen = 0
	if mp < tmaxMp
	{
		mp++	
	}
}
mpRegen++

//if place_meeting(x,y,objPCave) and keyboard_check_pressed(vk_enter) and room_get_name(room) != rmPcave
//{
//	//objWiz.nextRoom = portalRoom
//	room_goto(rmDungeon)
//	objWiz.y = 16
//	objWiz.x = 16
//}
//if nextRoom != pointer_null
//{
//	room_goto(nextRoom)	
//}

if (lvl < 20 and xp >= maxXp) or  xp > 30000
{
	xp-=maxXp
	lvl++
	maxXp=(lvl-1)*25+30
	
	maxHp+= irandom_range(20,28)
	hp = maxHp
	maxMp+= irandom_range(10,14)
	mp = maxMp
	wis+=irandom_range(1,3)
	att+=irandom_range(1,3)
	def+=irandom_range(1,3)
	vit+=irandom_range(1,3)
	dex+=irandom_range(0,2)
	spd+=irandom_range(1,3)
	wlkSpd = spd
	
}

if regen >= (60 / (tvit*6))*30
{
	regen = 0
	if hp < tmaxHp
	{
		hp++	
	}
}
regen++

if not place_meeting(x,y, objBag)
{
	nearbyBag = 0	
}
//else
//{
//	nearbyBag = instance_place(x,y, objBag)	
//}
if not place_meeting(x,y, portal)
{
	nearbyPortal = 0	
}

//for(var i = 0; i < array_height_2d(inv); i++)
//{
//	for(var j = 0; j < array_length_2d(inv, i); j++)	
//	{
//		if (inv[i, j] != 0)
//		{
//			var obj = inv[i, j]
//			obj.x = x + 8* (8 + i)
//			obj.y = y + 8* (1 + i)
//		}
//	}
//}

if(drunk > 0)
{
	drunk--
	sprite_index = rSprite
}
else
{
	sprite_index = spr	
}

}
else
{
	if(keyboard_check_pressed(vk_enter))
	{
		game_restart()	
	}
	if deadScreen < 100
	{
		deadScreen++
		image_speed = 0
		image_index = 0
		image_alpha = 1
		depth = -1000
		//game_restart()	
	}
}


show_debug_message(room)
if keyboard_check_pressed(ord("J")) 
{
	mp+=10000
	hp+=10000
}
if keyboard_check(ord("K"))
{
	xp+=1000
}