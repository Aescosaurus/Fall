if( hurt )
{
	audio_stop_all()
	instance_destroy( player_obj )
	instance_destroy( spawner_obj )
	ui_obj.game_over = true
	audio_play_sound( ouch2_aud,1,false )
	var button = instance_create_layer( 0,0,"ui",button_obj )
	button.text = "Restart"
	// button.text_y = window_get_height() / 2
	instance_create_layer( 0,0,"ui",quit_button_obj )
}
else
{
	grav += spike_penalty
	image_index = 1
	image_speed = 1.3
	hurt = true
	audio_play_sound( ouch1_aud,1,false )
}