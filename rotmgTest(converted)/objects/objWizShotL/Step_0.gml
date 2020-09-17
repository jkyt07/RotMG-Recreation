event_inherited()
r = spd*2
cSpd = spd

for(var i = 0; i < dirSpd; i++)
{
theta = (theta + 1) mod 360
cDir = (cDir + 1) mod 180
if (theta >= endDir and endDir > startDir) or (theta >= endDir and theta < startDir)
{
	cy = y + lengthdir_y(r, targetDir)
	cx = x + lengthdir_x(r, targetDir)
	theta = startDir
}
	x = cx + lengthdir_x(r, theta)
	y = cy + lengthdir_y(r, theta)
}
	cy = cy + lengthdir_y(cSpd, targetDir)
	cx = cx + lengthdir_x(cSpd, targetDir)

//instance_create_layer(x,y,"InstancesA",projectile)
//image_angle = (theta + 90) + 45
image_angle = (cDir / 2) + targetDir
