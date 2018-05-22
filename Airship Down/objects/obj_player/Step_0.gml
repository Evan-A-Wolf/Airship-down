//horizontal movement
if keyboard_check(ord("A")){
	sprite_index = spr_player_running_temp
	image_xscale = -1
	x -= 7 * spd
	inert = -5
}

if keyboard_check(ord("D")){
	sprite_index = spr_player_running_temp
	x += 6 * spd
	inert = 5
}

//vertical movement
if keyboard_check(ord("A")) and place_meeting(x, y, obj_wall)
{
	y -= 10
}

if keyboard_check(ord("S")) and (place_meeting(x, y, obj_wall) == false {
	y += 10
}

//grav
if place_meeting(x, y, obj_wall){
	y = y
}
else {
	y +=8
}
//code inertia here later

