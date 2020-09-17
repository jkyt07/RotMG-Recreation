//292,300
//420,295
//300,385
//415,380
randomize()
r = irandom_range(1,4)
if r = 1 then
{
objWiz.x = 292
objWiz.y = 300
}
else if r = 2 then
{
objWiz.x = 420
objWiz.y = 295
}
else if r = 3 then
{
objWiz.x = 300
objWiz.y = 385
}
else if r = 4 then
{
objWiz.x = 415
objWiz.y = 380
}

//window_set_fullscreen(true)
audio_play_sound(music,3,1)