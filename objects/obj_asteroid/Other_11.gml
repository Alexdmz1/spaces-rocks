/// @description Take Damage

/// @description colison con asterioide and score
score += 10;
audio_play_sound(snd_explosion,1,false);
#region/// destruir bullet
instance_destroy();

#endregion
#region ///destruir asteroide con brisas y crear asteroides

	
if(sprite_index ==spr_asteroid_huge){
	repeat(2){
		var new_asteroid = instance_create_layer(x,y,"Instances",obj_asteroid);
		new_asteroid.sprite_index = spr_asteroid_med;
	}
}else if(sprite_index ==spr_asteroid_med){
	repeat(2){
		var new_asteroid = instance_create_layer(x,y,"Instances",obj_asteroid);
		new_asteroid.sprite_index = spr_asteroid_small;
	}
}
repeat(10){
	instance_create_layer(x,y,"Instances",obj_debris); ///crear las brisas
}

#endregion