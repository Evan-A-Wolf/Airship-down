//allows wall jumping
if place_meeting(x+1, y, obj_wall) or place_meeting(x, y+1, obj_wall){
	jump = true	
}

//restrics wall jumping to 3 times
if place_meeting(x, y+1, obj_wall){
	jcount = 3
}