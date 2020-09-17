
v_vals = room_get_viewport(rmOverworld, 0);
if v_vals[0] == false
    {
   // room_set_viewport(rm_Game, true, v_vals[1], v_vals[2], v_vals[3], v_vals[4]);
	 room_set_viewport(rmOverworld, 0,v_vals[0],v_vals[1], v_vals[2], v_vals[3], v_vals[4]);
    }
	
objWiz.x = objCowardice.x
objWiz.y = objCowardice.y