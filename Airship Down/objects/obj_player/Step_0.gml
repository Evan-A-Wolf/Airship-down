//Player input
key_right = keyboard_check(ord("D"));
key_left = keyboard_check(ord("A"));
key_jump = keyboard_check_pressed(ord("W"));

var move = key_right - key_left;
hsp = 7 *move * spd;
vsp += grav;

//Player jump mechanic
if jump == true && (key_jump) && jcount >= 1
{
	vsp = -21
	hsp += sign(hsp)
	jump = false
	jcount -= 1
}

//slowed fall when on wall mechanic
if place_meeting(x+1, y, obj_wall) && (key_right or key_left) && !place_meeting(x, y+1, obj_wall) && vsp >= 0
{
	vsp = 4
}

//Horizontal Collision
if (place_meeting(x+hsp,y,obj_wall))
{
	while (!place_meeting(x+sign(hsp),y,obj_wall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
if (place_meeting(x+hsp,y,obj_wall))
{
	while (!place_meeting(x+sign(hsp),y,obj_wall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x=x+hsp
//Vertical Collision
if (place_meeting(x,y+vsp,obj_wall))
{
	while (!place_meeting(x,y+sign(vsp),obj_wall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
if (place_meeting(x,y+vsp,obj_wall))
{
	while (!place_meeting(x,y+sign(vsp),obj_wall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y=y+vsp


//animation/sprite fixes for the player
if !place_meeting(x, y+63, obj_wall){
	sprite_index = spr_player_jump_temp
}
else{
	if hsp < 0{
		sprite_index = spr_player_running_temp
		image_xscale = -1
		direc = 0
	}
	else if hsp > 0{
		sprite_index = spr_player_running_temp
		image_xscale = 1
		direc = 1
	}
	else{
		sprite_index = spr_player_temp
		if direc = 0{
			image_xscale = -1
		}
		else{
			image_xscale = 1
		}
	}
}

if playerClass == false{
	if playerClass == 1{
		script_exists(scr_battlemage_stats)
	}
	if playerClass == 2{
		script_exists(scr_wizard_stats)
	}
	if playerClass == 3{
		script_exists(scr_caster_stats)
	}
}

hp = maxhp - extdmg
mp = maxmp - extdrain