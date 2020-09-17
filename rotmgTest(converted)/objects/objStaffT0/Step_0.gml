event_inherited()
cooldown = 30 / objWiz.dex

if(fire)
{
	nextDir = point_direction(objWiz.x, objWiz.y, mouse_x, mouse_y)
	var nextShot = instance_create_layer(objWiz.x+lengthdir_x(3,point_direction(objWiz.x,objWiz.y,mouse_x,mouse_y)),objWiz.y+lengthdir_y(3,point_direction(objWiz.x,objWiz.y,mouse_x,mouse_y)),"InstancesB", objWizShotL)
	nextShot.sprite_index = shotSpr
	nextShot = instance_create_layer(objWiz.x+lengthdir_x(3,point_direction(objWiz.x,objWiz.y,mouse_x,mouse_y)),objWiz.y+lengthdir_y(3,point_direction(objWiz.x,objWiz.y,mouse_x,mouse_y)),"InstancesB", objWizShotR)
	nextShot.sprite_index = shotSpr
	
	fire = 0
}