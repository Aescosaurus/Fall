var spike = instance_create_layer(
	random_range( 0,room_width ),
	player.y + room_height,
	"instances",
	spike_obj )

spike.image_angle = random_range( 0.0,360.0 )

alarm_set( 0,spike_spawn_interval )