//draw_self()


//gray hud
draw_rectangle_color(guiX,0,1920,1080,c_dkgray,c_dkgray,c_dkgray,c_dkgray,false)

//username
draw_text_ext_transformed_color(guiX + 16, 320, "User",1,5000, 3,3,0,c_white,c_white,c_white,c_white,true)
draw_text_ext_transformed_color(guiX + 16 + 200, 320, "lvl " + string(lvl),1,5000, 3,3,0,c_white,c_white,c_white,c_white,true)

//xpbar
draw_rectangle_color(guiX + 25,400,guiX + (400 - 26),430,c_black,c_black,c_black,c_black,false)
draw_rectangle_color(guiX + 25,400,guiX + min((400 - 26) - ((maxXp-xp)/maxXp*350), 374),430,c_green,c_green,c_green,c_green,false)
xpBar = string(xp)+" \/ "+string(maxXp)
draw_text_ext_transformed_color(guiX + 200 - (string_length(xpBar)*10), 395, xpBar,1,5000, 2,2,0,c_white,c_white,c_white,c_white,true)

//healthbar
draw_rectangle_color(guiX + 25,440,guiX + (400 - 26),470,c_black,c_black,c_black,c_black,false)
draw_rectangle_color(guiX + 25,440,guiX + min((400 - 26) - ((tmaxHp-hp)/tmaxHp*350), 374),470,c_red,c_red,c_red,c_red,false)
hpBar = string(hp)+" \/ "+string(tmaxHp)
hpBars = ""
if smaxHp != 0 then hpBars+=" +" + string(smaxHp)
draw_text_ext_transformed_color(guiX + 200 - (string_length(hpBar)*10), 435, hpBar + hpBars,1,5000, 2,2,0,c_white,c_white,c_white,c_white,true)

//mpbar
draw_rectangle_color(guiX + 25,480,guiX + (400 - 26),510,c_black,c_black,c_black,c_black,false)
draw_rectangle_color(guiX + 25,480,guiX + min((400 - 26) - ((tmaxMp-mp)/tmaxMp*350), 374),510,c_blue,c_blue,c_blue,c_blue,false)
mpBar = string(mp)+" \/ "+string(tmaxMp)
mpBars = ""
if smaxMp != 0 then mpBars+=" +" + string(smaxMp)
draw_text_ext_transformed_color(guiX + 200 - (string_length(mpBar)*10), 475, mpBar + mpBars,1,5000, 2,2,0,c_white,c_white,c_white,c_white,true)

//stats
attStat = "ATT " + string(att)
if satt != 0 then attStat+= " +" + string(satt)
draw_text_ext_transformed_color(10, 940, attStat,1,5000, 1.5,1.5,0,c_white,c_white,c_white,c_white,true)
spdStat = "SPD " + string(spd)
if sspd != 0 then spdStat+= " +" + string(sspd)
draw_text_ext_transformed_color(10, 960, spdStat,1,5000, 1.5,1.5,0,c_white,c_white,c_white,c_white,true)
vitStat = "VIT " + string(vit)
if svit != 0 then vitStat+= " +" + string(svit)
draw_text_ext_transformed_color(10, 980, vitStat,1,5000, 1.5,1.5,0,c_white,c_white,c_white,c_white,true)
defStat = "DEF " + string(def)
if sdef != 0 then defStat+= " +" + string(sdef)
draw_text_ext_transformed_color(10 + 140, 940, defStat,1,5000, 1.5,1.5,0,c_white,c_white,c_white,c_white,true)
dexStat = "DEX " + string(dex)
if sdex != 0 then dexStat+= " +" + string(sdex)
draw_text_ext_transformed_color(10 + 140, 960, dexStat,1,5000, 1.5,1.5,0,c_white,c_white,c_white,c_white,true)
wisStat = "WIS " + string(wis)
if swis != 0 then wisStat+= " +" + string(swis)
draw_text_ext_transformed_color(10 + 140, 980, wisStat,1,5000, 1.5,1.5,0,c_white,c_white,c_white,c_white,true)

//inv
//draw_rectangle_color(guiX + 25, 620, guiX + 25 + 64, 620 + 64, c_ltgray,c_ltgray,c_ltgray,c_ltgray,0)	
//draw_rectangle_color(guiX + 25 + 84, 620, guiX + 25 + 64 + 84, 620 + 64, c_ltgray,c_ltgray,c_ltgray,c_ltgray,0)
//draw_rectangle_color(guiX + 25 + 84 * 2, 620, guiX + 25 + 64 + 84 * 2, 620 + 64, c_ltgray,c_ltgray,c_ltgray,c_ltgray,0)
//draw_rectangle_color(guiX + 25 + 84 * 3, 620, guiX + 25 + 64 + 84 * 3, 620 + 64, c_ltgray,c_ltgray,c_ltgray,c_ltgray,0)

//draw_rectangle_color(guiX + 25, 620 + 84, guiX + 25 + 64, 620 + 64 + 84, c_ltgray,c_ltgray,c_ltgray,c_ltgray,0)	
//draw_rectangle_color(guiX + 25 + 84, 620 + 84, guiX + 25 + 64 + 84, 620 + 64 + 84, c_ltgray,c_ltgray,c_ltgray,c_ltgray,0)
//draw_rectangle_color(guiX + 25 + 84 * 2, 620 + 84, guiX + 25 + 64 + 84 * 2, 620 + 64 + 84, c_ltgray,c_ltgray,c_ltgray,c_ltgray,0)
//draw_rectangle_color(guiX + 25 + 84 * 3, 620 + 84, guiX + 25 + 64 + 84 * 3, 620 + 64 + 84, c_ltgray,c_ltgray,c_ltgray,c_ltgray,0)

//inv items
for(var i = 0; i < 4; i++)
{
	for(var j = 0; j < 2; j++)	
	{
		draw_rectangle_color(guiX + 25 + 84 * i, 620 + 84 * j, guiX + 25 + 84 * i + 64, 620 + 84 * j + 64, c_ltgray,c_ltgray,c_ltgray,c_ltgray,0)
		draw_text_transformed_color(guiX + 25 + 84 * i + 20, 620 + 84 * j + 8, string(i + j * 4 + 1), 2.5, 2.5, 0, c_dkgray, c_dkgray, c_dkgray, c_dkgray, 1)
		if (inv[i, j] != 0)
		{
			var item = inv[i, j]
			draw_sprite_ext(item.sprite_index, 0, guiX + 25 + 84 * i + 8 * 4, 620 + 84 * j + 8 * 4, scale, scale, 0, c_white, 1)
		}
	}
	draw_rectangle_color(guiX + 25 + 84 * i, 536, guiX + 25 + 84 * i + 64, 600, c_ltgray,c_ltgray,c_ltgray,c_ltgray,0)
	if (equip[i] != 0)
	{
		var item = equip[i]
		draw_sprite_ext(item.sprite_index, 0, guiX + 25 + 84 * i + 8 * 4, 536 + 33, 7.5, 7.5, 0, c_white, 1)
	}
	else
	{
		draw_sprite_ext(empty[i, 0], 0, guiX + 25 + 84 * i + 8 * 4, 536 + 33, 7.5, 7.5, 0, c_white, 1)
	}
}
//draw_rectangle_color(guiX + 25, 620 + 84*2, guiX + 25 + 148, 660 + 84*2, c_ltgray,c_ltgray,c_ltgray,c_ltgray, 0)
//draw_rectangle_color(guiX + 25 + 168, 620 + 84*2, guiX + 25 + 148 + 168, 660 + 84*2, c_ltgray,c_ltgray,c_ltgray,c_ltgray, 0)
//draw_text_transformed(guiX + 25 + 32, 615 + 84*2, string(numHp), 2.5,2.5,0)
//draw_sprite_ext(sprHpPot, 0, guiX + 25 + 84 + 22, 640 + 84*2, 6, 6, 0, c_white, 1)

//nearby
if nearbyBag != 0
{
	draw_rectangle_color(guiX + 25, 820, guiX + 25 + 64, 820 + 64, c_ltgray,c_ltgray,c_ltgray,c_ltgray,0)	
	draw_rectangle_color(guiX + 25 + 84, 820, guiX + 25 + 64 + 84, 820 + 64, c_ltgray,c_ltgray,c_ltgray,c_ltgray,0)
	draw_rectangle_color(guiX + 25 + 84 * 2, 820, guiX + 25 + 64 + 84 * 2, 820 + 64, c_ltgray,c_ltgray,c_ltgray,c_ltgray,0)
	draw_rectangle_color(guiX + 25 + 84 * 3, 820, guiX + 25 + 64 + 84 * 3, 820 + 64, c_ltgray,c_ltgray,c_ltgray,c_ltgray,0)

	draw_rectangle_color(guiX + 25, 820 + 84, guiX + 25 + 64, 820 + 64 + 84, c_ltgray,c_ltgray,c_ltgray,c_ltgray,0)	
	draw_rectangle_color(guiX + 25 + 84, 820 + 84, guiX + 25 + 64 + 84, 820 + 64 + 84, c_ltgray,c_ltgray,c_ltgray,c_ltgray,0)
	draw_rectangle_color(guiX + 25 + 84 * 2, 820 + 84, guiX + 25 + 64 + 84 * 2, 820 + 64 + 84, c_ltgray,c_ltgray,c_ltgray,c_ltgray,0)
	draw_rectangle_color(guiX + 25 + 84 * 3, 820 + 84, guiX + 25 + 64 + 84 * 3, 820 + 64 + 84, c_ltgray,c_ltgray,c_ltgray,c_ltgray,0)

	for(var i = 0; i < 8; i++)
	{
		if (ds_list_size(nearbyBag.contents) > i)
		{
			var item = ds_list_find_value(nearbyBag.contents, i)
			draw_sprite_ext(item.sprite_index, 0, guiX + 25 + 84 * (i % 4) + 8 * 4, 820 + 84 * floor(i / 4) + 8 * 4, 8, 8, 0, c_white, 1)
		}
	}
}
else if nearbyPortal != 0
{
	if string_length(nearbyPortal.portalName) <= 12
	{
		draw_text_ext_transformed(guiX + 50 + (10-string_length(nearbyPortal.portalName))*2, 840, nearbyPortal.portalName, 12, 1500, 2.5, 2.5, 0)
	}
	else
	{
		draw_text_ext_transformed(guiX + 70, 820, nearbyPortal.portalName, 12, 150, 2.5, 2.5, 0)
	}
	if(point_in_rectangle(window_mouse_get_x(), window_mouse_get_y(), guiX + 100, 900, guiX + 250, 950))
	{
		draw_rectangle_color(guiX + 100, 900, guiX + 250, 950, c_lttan, c_lttan, c_lttan, c_lttan, 0)
	}
	else
	{
		draw_rectangle_color(guiX + 100, 900, guiX + 250, 950, c_white, c_white, c_white, c_white, 0)
	}
	draw_text_transformed_color(guiX + 105, 895, "Enter", 3, 3, 0, c_black, c_black, c_black, c_black, 1)
}

//draw minimap
if(showMap and roomMapX != -1)
{
	draw_text(0, 50, string(roomMapX) + ", " + string(roomMapY))
	for(var i = roomMapX; i <= roomMapXend; i++)
	{
		for(var j = roomMapY; j <= roomMapYend; j++)
		{
			if (minimap[i, j] !=0)
			{
				draw_sprite_ext(minimap[i, j], 0, guiX + 50 + (i - roomMapX)*(2 / (roomMapSizeT / 130)), 30 + (j - roomMapY)*(2 / (roomMapSizeT / 130)),  1 / (roomMapSizeT / 130), 1 / (roomMapSizeT / 130), 0, c_white, 1)	
			}
		}
	}
	draw_sprite_ext(mapWiz, 0, guiX + 50 + (x/8 - roomMapX)*(2 / (roomMapSizeT / 130)), 30 + (y/8 - roomMapY)*(2 / (roomMapSizeT / 130)),  1.5 / (roomMapSizeT / 130), 1.5 / (roomMapSizeT / 130), 0, c_white, 1)
	if(instance_exists(objMixcoatl))
	{
		draw_sprite_ext(mapBoss, 0, guiX + 50 + (objMixcoatl.x/8 - roomMapX)*(2 / (roomMapSizeT / 130)), 30 + (objMixcoatl.y/8 - roomMapY)*(2 / (roomMapSizeT / 130)),  1.5 / (roomMapSizeT / 130), 1.5 / (roomMapSizeT / 130), 0, c_white, 1)
	}
}


//death screen (keep at end)
if dead
{
	draw_set_alpha(deadScreen/100)
	draw_set_color(c_black)
	draw_rectangle(0,0,1920,1080,false)
	draw_set_alpha(1)
	draw_sprite_ext(sprite_index, image_index, 120 * 8 - 200 - roomBorderX * scale, 68 * 8 - 4 - roomBorderY * scale,image_xscale * scale, image_yscale * scale, 0, c_white, 1)
}

drawMouseCoord = string(mouse_x) + ", " + string(mouse_y)
draw_text(0,0, drawMouseCoord)
drawWizCoord = string(x) + ", " + string(y)
draw_text(0,10, drawWizCoord)

for(var i = 0; i < 4; i++)
{
	for(var j = 0; j < 2; j++)
	{
		if(point_in_rectangle(window_mouse_get_x(), window_mouse_get_y(), guiX + 25 + 84 * i, 620 + 84 * j, guiX + 25 + 84 * i + 64, 620 + 84 * j + 64))
		{
			draw_rectangle_color(0, 36, 70, 46, c_green, c_green, c_green, c_green,0)
			drawInvNum = string(i + 4*j)
			draw_text(0,30,drawInvNum)
		}
	}
}
for(var i = 0; i < 4; i++)
{
	for(var j = 0; j < 2; j++)
	{
		if(point_in_rectangle(window_mouse_get_x(), window_mouse_get_y(), guiX + 25 + i * 84, 820 + j * 84, guiX + 25 + i * 84 + 64, 820 + j * 84 + 64))
		{
			draw_rectangle_color(0, 46, 70, 56, c_green, c_green, c_green, c_green,0)
			drawBagNum = string(i + 4*j)
			draw_text(0,40, drawBagNum)
		}
	}
}


drawRelCoord = string(mouse_x - x) + ", " + string(mouse_y - y)
draw_text(0,20, drawRelCoord)
drawRoomBorder = string(roomBorderX) + ", " + string(roomBorderY)
draw_text(0,50, drawRoomBorder)
draw_text(0,60, string(numRooms))
draw_text(0,70, string(scale))