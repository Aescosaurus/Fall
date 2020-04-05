hurt = false
instance_destroy( other )
grav += berry_penalty
image_speed = 0.0
image_index = 0
ui_obj.berries += 1
if( ui_obj.berries >= ui_obj.berry_max )
{
	ui_obj.berries = 0
	ui_obj.berry_max += floor( ui_obj.berry_max / 2 )
	grav *= berry_recovery_factor
}

audio_play_sound( berry_aud,1,false )