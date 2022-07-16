///@description initialise_bullet
///@arg direction
///@arg speed
///@arg faction
///@arg bullet_instance
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function initialise_bullet(){
	var _dir = argument[0];
	var _spd = argument[1];
	var _fac = argument[2];
	var _creator = id;
	var inst = argument[3];
	with(inst){
		direction = _dir;
		if(object_index ==obj_bullet) speed = _spd;
		faction = _fac;
		creator = _creator;
		if(faction == factions.ally) image_blend = c_aqua;
		else if(faction ==factions.enemy) image_blend = c_red;
	}
}