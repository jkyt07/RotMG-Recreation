direction = equip[0].nextDir

event_inherited()
speed = 0
image_angle = (direction + 45) mod 360
//dmg++

spd = 3

r = spd*2
dirSpd = 25
targetDir = direction
theta = (targetDir -180 + 360) mod 360
startDir = theta
endDir = (startDir + 180) mod 360
cy = y + lengthdir_y(r, targetDir)
cx = x + lengthdir_x(r, targetDir)
cSpd = spd
cDir = 0
