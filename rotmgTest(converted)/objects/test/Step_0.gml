theta += theta_speed
if (theta >= 360)
{
	theta -= 360
}

if theta >= 90 and theta < 270
{
	cy = cy + (2 * lengthdir_y(r, theta))
	cx = cx + (2 * lengthdir_x(r, theta))
	//instance_create_layer(cx,cy,"InstancesB",projectile)
	theta = 270
}
	x = cx + lengthdir_x(r, theta)
	y = cy + lengthdir_y(r, theta)